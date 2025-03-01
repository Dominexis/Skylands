import sys
if not (
    (sys.version_info[0] == 3 and sys.version_info[1] >= 12)
    or
    (sys.version_info[0] > 3)
):
    print("ERROR: This script requires Python 3.12 or newer!")
    input()
    exit()
    
from pathlib import Path
from typing import Any
import json
import shutil

PROGRAM_PATH = Path(__file__).parent
PLOT_DEFINITIONS = PROGRAM_PATH / "Plots.json"
DATA_PACK_PATH = PROGRAM_PATH / "Data Packs"
CORE_DATA_PACK_PATH = DATA_PACK_PATH / "Skylands Core"
SKYLANDS_NAMESPACE_PATH = CORE_DATA_PACK_PATH / "data" / "sl"
FUNCTION_PATH = SKYLANDS_NAMESPACE_PATH / "function" / "generated"
PLOT_FUNCTION_PATH = FUNCTION_PATH / "plot"
ADVANCEMENT_PATH = SKYLANDS_NAMESPACE_PATH / "advancement" / "generated"

VALID_WEIGHTS = ("medium", "heavy")



def unpack_coords(coords: str, include_rotation: bool = False) -> list[int]:
    parts = [int(part) for part in coords.split(" ")]
    if len(parts) == 2:
        parts.insert(1, 0)
    if include_rotation:
        if len(parts) == 3:
            parts.append(0)
        if len(parts) == 4:
            parts.append(0)
    else:
        parts = parts[:3]
    return parts

def pack_coords(coords: list[int], include_rotation: bool = False, include_y: bool = True, y_override: int | None = None) -> str:
    if len(coords) == 2:
        coords.insert(1, 0)
    if include_y:
        if include_rotation:
            new_coords = coords.copy()
            if len(new_coords) == 3:
                new_coords.append(0)
            if len(new_coords) == 4:
                new_coords.append(0)
        else:
            new_coords = coords[:3]
        if y_override is not None:
            new_coords[1] = y_override
    else:
        new_coords = [coords[0], coords[2]]
    return " ".join(str(coord) for coord in new_coords)

def deduplicate_coords(coord_list: list[list[int]]) -> list[list[int]]:
    filtered_list: list[list[int]] = []
    packed_coord_list: list[str] = []
    for coord in coord_list:
        packed_coord = pack_coords(coord)
        if packed_coord not in packed_coord_list:
            packed_coord_list.append(packed_coord)
            filtered_list.append(coord)
    return filtered_list



def create_file(path: Path, contents: str):
    path.parent.mkdir(exist_ok=True, parents=True)
    with path.open("w", encoding="utf-8") as file:
        file.write(contents.strip())

def create_json_file(path: Path, contents):
    path.parent.mkdir(exist_ok=True, parents=True)
    with path.open("w", encoding="utf-8") as file:
        json.dump(contents, file, indent=4)



def create_plot_files(plot: dict[str, Any], global_data: dict[str, list[str]]):
    # Extract data
    namespace: str = plot["namespace"]

    # Compute coordinates of plot
    spawn_coords = unpack_coords(plot["spawn"], True)
    collectible_coords = [unpack_coords(collectible) for collectible in plot["collectibles"]]
    required_chunks = [unpack_coords(required_chunk) for required_chunk in plot["required_chunks"]]

    all_coords: list[list[int]] = [
        unpack_coords(plot["spawn"]),
        *collectible_coords,
        *required_chunks,
        *[unpack_coords(region) for region in plot["regions"]],
    ]
    min_coord: list[int] = [min([coords[i] for coords in all_coords])//512*512 for i in (0,2)]
    max_coord: list[int] = [max([coords[i] for coords in all_coords])//512*512 + 512 for i in (0,2)]
    plot_size = [max_coord[i] - min_coord[i] for i in range(2)]
    plot_center = [plot_size[i]//2 + min_coord[i] for i in range(2)]

    forceloaded_coords: list[list[int]] = [
        unpack_coords(plot["spawn"]),
        *collectible_coords,
        *required_chunks,
    ]
    forceloaded_coords = deduplicate_coords([[coord[0]//16*16, 0, coord[2]//16*16] for coord in forceloaded_coords])

    plot_volume = f"x={min_coord[0]},y=-64,z={min_coord[1]},dx={plot_size[0]-1},dy=511,dz={plot_size[1]-1}"

    plot_id = plot_center[0]//512%32768 + plot_center[1]//512%32768*32768

    # Prepare file paths
    plot_path = PLOT_FUNCTION_PATH / namespace
    api_path = plot_path / "api"

    # Push data to globals
    global_data["initialize_states"].append(f"scoreboard players add #plot.{namespace}.state sl.value 0")
    global_data["plot_ids"].append(f"{namespace}:{plot_id}")
    global_data["plot_names"].append(f'{plot_id}:"{namespace}"')
    global_data["login_from_pos"].append(f"execute if entity @s[{plot_volume}] run return run function sl:generated/plot/{namespace}/api/login")
    if plot["weight"] == "medium":
        global_data["sync_plot_counts_medium"].append(f"execute if score #plot.{namespace}.state sl.value matches 1.. run scoreboard players add #medium_plot_count sl.value 1")
    if plot["weight"] == "heavy":
        global_data["sync_plot_counts_heavy"].append(f"execute if score #plot.{namespace}.state sl.value matches 1.. run scoreboard players add #heavy_plot_count sl.value 1")
    global_data["tick"].append(f"execute if score #plot.{namespace}.state sl.value matches 1.. positioned {pack_coords(plot_center, False, True, 0)} run function sl:generated/plot/{namespace}/main")

    # Create functions
    create_file(api_path / "login.mcfunction",
f"""
# Cancel if the plot is not available
execute store result score #is_available sl.value run function sl:generated/plot/{namespace}/is_available
execute if score #is_available sl.value matches 0 run return 0

# Schedule login via fade out
scoreboard players set @s sl.fade_plot {plot_id}
function sl:player/fade/out

# Return 1 to mark success
return 1
""")
    
    create_file(plot_path / "can_login.mcfunction",
f"""
# Return 1 if the plot can be logged into by all metrics
{
    "return 1" if "max_players" not in plot or plot["max_players"] <= 0 else f"""execute store result score #player_count sl.value if entity @a[team=!sl.spectator,scores={{sl.plot={plot_id}}}]
return run execute if score #player_count sl.value matches ..{plot["max_players"]-1}"""
}
""")

    create_file(plot_path / "can_turn_on.mcfunction",
f"""
# Return 1 if the plot can be turned on by all metrics
execute if score #plot.{namespace}.state sl.value matches 1 run return 1
execute if score #plot.{namespace}.state sl.value matches 3 run return 1
execute if score #plot.{namespace}.state sl.value matches 4 run return 1
execute store result score #forceloaded_chunks_count sl.value run forceload query
return run execute if score #forceloaded_chunks_count sl.value matches ..{256 - len(forceloaded_coords)}{
    f" if score #{plot["weight"]}_plot_count sl.value < #max_{plot["weight"]}_plots sl.value" if plot["weight"] in VALID_WEIGHTS else ""
}
""")

    create_file(plot_path / "checkpoint.mcfunction",
f"""
# Run checkpoint function
scoreboard players set #success sl.value -1
execute store success score #success sl.value run function {namespace}:checkpoint

# Send message if the function doesn't exist
execute if score #success sl.value matches 0 run playsound minecraft:entity.experience_orb.pickup master @s
execute if score #success sl.value matches 0 run tellraw @s {{"text":"Checkpoint","color":"green"}}
""")

    create_file(plot_path / "complete.mcfunction",
f"""
# Grant advancement for this island
advancement grant @s only sl:generated/{namespace}

# Run complete function
function {namespace}:complete
""")

    create_file(plot_path / "forceload.mcfunction",
f"""
# Forceload all required chunks
{"\n".join([f"forceload add {pack_coords(coords, False, False)}" for coords in forceloaded_coords])}
""")

    create_file(plot_path / "initiate_login.mcfunction",
f"""
# Set checkpoint
spawnpoint @s {pack_coords(spawn_coords)}

scoreboard players set @s sl.checkpoint_x {spawn_coords[0]}
scoreboard players set @s sl.checkpoint_y {spawn_coords[1]}
scoreboard players set @s sl.checkpoint_z {spawn_coords[2]}
scoreboard players set @s sl.checkpoint_yaw {spawn_coords[3]}
scoreboard players set @s sl.checkpoint_pitch {spawn_coords[4]}
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in
""")

    create_file(plot_path / "is_available.mcfunction",
f"""
# Return 1 if the plot can be turned on and joined
execute store result score #can_turn_on sl.value run function sl:generated/plot/{namespace}/can_turn_on
execute store result score #can_login sl.value run function sl:generated/plot/{namespace}/can_login
return run execute if score #can_turn_on sl.value matches 1 if score #can_login sl.value matches 1
""")

    create_file(plot_path / "is_loaded.mcfunction",
f"""
# Return 1 if all the necessary chunks are loaded
return run execute {" ".join([f"if loaded {pack_coords(coords, False, True, 0)}" for coords in forceloaded_coords])}
""")

    create_file(plot_path / "login.mcfunction",
f"""
# Remove player from queue
team join sl.player{"_pvp" if plot["pvp"] else ""} @s[team=!sl.player{"_pvp" if plot["pvp"] else ""}]

# Run login function
function {namespace}:login
""")

    create_file(plot_path / "logout.mcfunction",
f"""
# Run logout function
function {namespace}:logout
""")

    create_file(plot_path / "main.mcfunction",
f"""
# Tick plot if it is on
execute if score #plot.{namespace}.state sl.value matches 1 run function sl:generated/plot/{namespace}/tick

# Run queue function if the plot is queued to turn on or off
execute if score #plot.{namespace}.state sl.value matches 2..4 run function sl:generated/plot/{namespace}/queue
""")

    create_file(plot_path / "off.mcfunction",
f"""
{f"""
# Decrement weighty plot count
execute if score #plot.{namespace}.state sl.value matches 1.. run scoreboard players remove #{plot["weight"]}_plot_count sl.value 1
""" if plot["weight"] in VALID_WEIGHTS else ""}
# Set state of plot
scoreboard players set #plot.{namespace}.state sl.value 0

# Turn off plot
function {namespace}:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,{plot_volume},tag=sl.collectible]

# Unforceload chunks
function sl:generated/plot/{namespace}/unforceload

# Send any players that happen to be in the plot to lobby
execute as @a[scores={{sl.plot={plot_id}}}] at @s run function sl:player/lobby
""")

    create_file(plot_path / "on.mcfunction",
f"""
# Set state of plot
scoreboard players set #plot.{namespace}.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value {plot_id}
{"\n".join([f"execute positioned {pack_coords(coords)} run function sl:collectible/spawn" for coords in collectible_coords])}

# Turn on plot
function {namespace}:plot_on

# Login all players
execute as @a[scores={{sl.plot={plot_id}}}] at @s run function sl:generated/plot/{namespace}/initiate_login
""")

    create_file(plot_path / "queue.mcfunction",
f"""
# Put all players into their queued position
gamemode spectator @a[gamemode=!spectator,scores={{sl.plot={plot_id}}}]
team join sl.queue @a[team=!sl.queue,scores={{sl.plot={plot_id}}}]
effect give @a[scores={{sl.plot={plot_id}}}] minecraft:blindness infinite 0 true
teleport @a[scores={{sl.plot={plot_id}}}] ~ 512 ~ 0 0

# Check if plot is loaded and run on/off function accordingly
execute store result score #is_loaded sl.value run function sl:generated/plot/{namespace}/is_loaded

execute if score #plot.{namespace}.state sl.value matches 2 if score #is_loaded sl.value matches 1 run function sl:generated/plot/{namespace}/off
execute if score #plot.{namespace}.state sl.value matches 3 if score #is_loaded sl.value matches 1 run function sl:generated/plot/{namespace}/on
execute if score #plot.{namespace}.state sl.value matches 4 if score #is_loaded sl.value matches 1 run function sl:generated/plot/{namespace}/reset
""")

    create_file(plot_path / "queue_login.mcfunction",
f"""
# Cancel if the plot is not available
execute store result score #is_available sl.value run function sl:generated/plot/{namespace}/is_available
execute if score #is_available sl.value matches 0 run return 0

# Log out of current plot
function sl:plot/logout

# Set plot ID
scoreboard players set @s sl.plot {plot_id}
scoreboard players set @s sl.fade_plot {plot_id}

# Turn plot on if it is currently off
execute if score #plot.{namespace}.state sl.value matches 0 run function sl:generated/plot/{namespace}/queue_on
execute if score #plot.{namespace}.state sl.value matches 2 run function sl:generated/plot/{namespace}/queue_on

# Login immediately if plot is already on
execute if score #plot.{namespace}.state sl.value matches 1 run function sl:generated/plot/{namespace}/initiate_login

# Return 1 to mark success
return 1
""")

    create_file(plot_path / "queue_off.mcfunction",
f"""
# Set state of plot
scoreboard players set #plot.{namespace}.state sl.value 2

# Forceload chunks
function sl:generated/plot/{namespace}/forceload
""")

    create_file(plot_path / "queue_on.mcfunction",
f"""
# Cancel if the plot cannot be turned on
execute store result score #can_turn_on sl.value run function sl:generated/plot/{namespace}/can_turn_on
execute if score #can_turn_on sl.value matches 0 run return 0
{
    f"""
# Increment weighty plot count
execute if score #plot.{namespace}.state sl.value matches 0 run scoreboard players add #{plot["weight"]}_plot_count sl.value 1
""" if plot["weight"] in VALID_WEIGHTS else ""
}
# Set state of plot
# Put state into a special state if it is queued to turn off already
execute if score #plot.{namespace}.state sl.value matches 2 run scoreboard players set #plot.{namespace}.state sl.value 4
execute unless score #plot.{namespace}.state sl.value matches 4 run scoreboard players set #plot.{namespace}.state sl.value 3

# Forceload chunks
function sl:generated/plot/{namespace}/forceload

# Return 1 to mark success
return 1
""")

    create_file(plot_path / "recall.mcfunction",
f"""
# Run recall function
function {namespace}:recall
""")

    create_file(plot_path / "reset.mcfunction",
f"""
# Turn off plot
function {namespace}:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,{plot_volume},tag=sl.collectible]

# Turn the plot on
function sl:generated/plot/{namespace}/on
""")

    create_file(plot_path / "tick.mcfunction",
f"""
# Tick plot
function {namespace}:tick

# Turn plot off if there are no players in it
execute store result score #player_count sl.value if entity @a[scores={{sl.plot={plot_id}}}]
execute if score #player_count sl.value matches 0 run function sl:generated/plot/{namespace}/queue_off
""")

    create_file(plot_path / "unforceload.mcfunction",
f"""
# Unforceload all required chunks
{"\n".join([f"forceload remove {pack_coords(coord, False, False)}" for coord in forceloaded_coords])}
""")

    create_file(plot_path / "warp.mcfunction",
f"""
# Teleport player to plot
teleport @s {pack_coords(plot_center, False, True, 65)}
""")
    
    create_json_file(ADVANCEMENT_PATH / f"{namespace}.json",
{
    "display": {
        "icon": plot["icon"],
        "title": [
            {
                "text": plot["name"]
            }
        ],
        "frame": {
            "easy": "task",
            "difficult": "goal",
            "challenging": "challenge",
        }[plot["difficulty"]],
        "description": [
            [
                {
                    "text": plot["description"],
                    "color": "green"
                },
                {
                    "text": f"\n\n{", ".join(plot["authors"])}",
                    "color": "gold"
                }
            ]
        ],
        "show_toast": False,
        "announce_to_chat": False,
        "hidden": False
    },
    "parent": f"sl:genre/{"" if plot["difficulty"] == "easy" else f"{plot["difficulty"]}_"}{plot["genre"]}",
    "criteria": {
        "requirement": {
            "trigger": "minecraft:impossible"
        }
    }
})




def create_files():
    # Delete generated files
    if FUNCTION_PATH.exists():
        shutil.rmtree(FUNCTION_PATH)
    if ADVANCEMENT_PATH.exists():
        shutil.rmtree(ADVANCEMENT_PATH)

    # Initialize global data
    global_data: dict[str, list[str]] = {
        "initialize_states": [],
        "plot_ids": ["lobby:0"],
        "plot_names": ['0:"lobby"'],
        "login_from_pos": ["execute if entity @s[x=-512,y=-64,z=-512,dx=1023,dy=511,dz=1023] run return run function sl:player/queue_lobby"],
        "sync_plot_counts_medium": [],
        "sync_plot_counts_heavy": [],
        "tick": [],
    }

    # Parse plot definitions
    with PLOT_DEFINITIONS.open("r", encoding="utf-8") as file:
        plot_definitions: dict[str, list[dict[str, Any]]] = json.load(file)

    # Iterate through plots
    for plot in plot_definitions["plots"]:
        if "disabled" in plot and plot["disabled"]:
            continue
        create_plot_files(plot, global_data)

    # Create global files
    create_file(FUNCTION_PATH / "initialize_data.mcfunction",
f"""
# Initialize plot state values
{"\n".join(global_data["initialize_states"])}

# Initialize IDs compound
data modify storage sl:data plot_ids set value {{{",".join(global_data["plot_ids"])}}}

# Initialize names compound
data modify storage sl:data plot_names set value {{{",".join(global_data["plot_names"])}}}
""")
    
    create_file(FUNCTION_PATH / "login_from_pos.mcfunction",
f"""
# Log into a plot based on the player's position
{"\n".join(global_data["login_from_pos"])}

# Warn player if they aren't in a plot
tellraw @s {{"text":"You are not on an island","color":"red"}}
return 0
""")
    
    create_file(FUNCTION_PATH / "sync_plot_counts.mcfunction",
f"""
# Synchronize plot count variables with actual values
scoreboard players set #medium_plot_count sl.value 0
{"\n".join(global_data["sync_plot_counts_medium"])}

scoreboard players set #heavy_plot_count sl.value 0
{"\n".join(global_data["sync_plot_counts_heavy"])}
""")
    
    create_file(FUNCTION_PATH / "tick.mcfunction",
f"""
# Tick plots with a non-off state
{"\n".join(global_data["tick"])}
""")



if __name__ == "__main__":
    create_files()
    input("Files created")