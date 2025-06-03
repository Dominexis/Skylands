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

errors = 0
player_tags: list[str] = []
scoreboard_objectives: list[str] = []
scheduled_functions: list[str] = []

def add_error():
    global errors
    errors += 1

def log_error(message: str, line_number: int, path: Path):
    print(f"ERROR: {path.as_posix()}, line {line_number}:\n{message}")
    add_error()



def prompt_for_pack():
    global errors
    global player_tags
    global scoreboard_objectives
    global scheduled_functions
    while True:
        print("")
        path_string = input("Path to pack to test (drag'n'drop, leave blank to exit): ")
        print("")
        if not path_string:
            break
        if path_string.startswith("&"):
            path_string = path_string[1:].strip()
        if path_string.startswith("'"):
            path_string = path_string[1:-1].strip()
        if path_string.startswith('"'):
            path_string = path_string[1:-1].strip()
        path = Path(path_string)
        if not path.exists():
            print("ERROR: Path does not exist.")
            continue
        if not path.is_dir():
            print("ERROR: Path is not a folder.")
            continue

        errors = 0
        player_tags = []
        scoreboard_objectives = []
        scheduled_functions = []
        
        data_path = path / "data"
        if data_path.exists() and data_path.is_dir():
            test_data_pack(data_path)

        assets_path = path / "assets"
        if assets_path.exists() and assets_path.is_dir():
            test_resource_pack(assets_path)

        print("")
        if errors == 0:
            print("No errors found. Pack is clean!")
        else:
            print(f"{errors} error{"s" if errors > 1 else ""} found. They must be fixed before the pack is accepted.")



def test_data_pack(path: Path):
    # RULE: Do not edit anything in the `minecraft` namespace.
    if (path / "minecraft").exists():
        print("ERROR: Do not edit anything in the 'minecraft' namespace.")
        add_error()

    # Iterate through namespaces
    for namespace in path.iterdir():
        if not namespace.is_dir():
            continue
        test_data_pack_namespace(namespace)

def test_data_pack_namespace(path: Path):
    # Iterate through functions
    function_path = path / "function"
    if function_path.exists() and function_path.is_dir():
        for file_path in function_path.glob("**/*.mcfunction"):
            if not file_path.is_file():
                continue
            test_function(file_path)

    # Test plot on function
    plot_on_path = function_path / "plot_on.mcfunction"
    if len(scoreboard_objectives) > 0:
        # RULE: All scoreboard objectives must be defined in the plot_on function.
        if not plot_on_path.exists():
            print("ERROR: All scoreboard objectives must be defined in the plot_on function: plot_on function doesn't exist.")
            add_error()
        else:
            test_plot_on_function(plot_on_path)

    # Test plot off function
    plot_off_path = function_path / "plot_off.mcfunction"
    if len(scheduled_functions) > 0:
        # RULE: All scheduled functions must be cleared in the plot_off function.
        if not plot_off_path.exists():
            print("ERROR: All scheduled functions must be cleared in the plot_off function: plot_off function doesn't exist.")
            add_error()
        else:
            test_plot_off_function(plot_off_path)

    # Test logout function
    logout_path = function_path / "logout.mcfunction"
    if len(player_tags) > 0:
        # RULE: All player tags must be removed in the logout function.
        if not logout_path.exists():
            print("ERROR: All player tags must be removed in the logout function: logout function doesn't exist.")
            add_error()
        else:
            test_logout_function(logout_path)


def parse_function(path: Path) -> dict[int, str]:
    with path.open("r", encoding="utf-8") as file:
        contents = file.read()
    
    # Condense lines which are split up
    lines: dict[int, str] = {}
    previous_line_number = 0
    current_line_number = 0
    line_break = False
    for line in contents.split("\n"):
        current_line_number += 1
        line = line.strip()
        if not line_break:
            lines[current_line_number] = line
            previous_line_number = current_line_number
        else:
            lines[previous_line_number] += line
        if line.endswith("\\"):
            if not line_break and not line.startswith("#"):
                line_break = True
        else:
            line_break = False
        if line_break:
            lines[previous_line_number] = lines[previous_line_number][:-1]

    return lines

def test_function(path: Path):
    lines = parse_function(path)

    # Test commands
    is_animated_java = "animated_java" in path.as_posix()
    for i in lines:
        test_command(lines[i], i, path, is_animated_java)

def test_plot_on_function(path: Path):
    lines = parse_function(path)
    unaccounted_objectives: list[str] = scoreboard_objectives.copy()

    for i in lines:
        command = lines[i]
        if not command.strip():
            continue
        if command.strip().startswith("#"):
            continue
        arguments = parse_tokens(command, " ", True)
        if len(arguments) == 0:
            continue

        if (
            len(arguments) >= 4 and
            arguments[0] == "scoreboard" and
            arguments[1] == "objectives" and
            arguments[2] == "add" and
            arguments[3] in unaccounted_objectives
        ):
            unaccounted_objectives.remove(arguments[3])

    # RULE: All scoreboard objectives must be defined in the plot_on function.
    if len(unaccounted_objectives) > 0:
        print(f"ERROR: All scoreboard objectives must be defined in the plot_on function: {unaccounted_objectives}")
        add_error()

def test_plot_off_function(path: Path):
    lines = parse_function(path)
    unaccounted_scheduled_functions: list[str] = scheduled_functions.copy()

    for i in lines:
        command = lines[i]
        if not command.strip():
            continue
        if command.strip().startswith("#"):
            continue
        arguments = parse_tokens(command, " ", True)
        if len(arguments) == 0:
            continue

        if (
            len(arguments) >= 3 and
            arguments[0] == "schedule" and
            arguments[1] == "clear" and
            arguments[2] in unaccounted_scheduled_functions
        ):
            unaccounted_scheduled_functions.remove(arguments[2])

    # RULE: All scheduled functions must be cleared in the plot_off function.
    if len(unaccounted_scheduled_functions) > 0:
        print(f"ERROR: All scheduled functions must be cleared in the plot_off function: {unaccounted_scheduled_functions}")
        add_error()

def test_logout_function(path: Path):
    lines = parse_function(path)
    unaccounted_tags: list[str] = player_tags.copy()

    for i in lines:
        command = lines[i]
        if not command.strip():
            continue
        if command.strip().startswith("#"):
            continue
        arguments = parse_tokens(command, " ", True)
        if len(arguments) == 0:
            continue

        if (
            len(arguments) >= 4 and
            arguments[0] == "tag" and
            arguments[1] == "@s" and
            arguments[2] == "remove" and
            arguments[3] in unaccounted_tags
        ):
            unaccounted_tags.remove(arguments[3])

    # RULE: All player tags must be removed in the logout function.
    if len(unaccounted_tags) > 0:
        print(f"ERROR: All player tags must be removed in the logout function: {unaccounted_tags}")
        add_error()

def test_command(command: str, line_number: int, path: Path, is_animated_java: bool):
    if not command.strip():
        return
    if command.strip().startswith("#"):
        return
    arguments = parse_tokens(command, " ", True)

    test_command_arguments(arguments, line_number, path)

    # Only test target selectors that aren't part of tellraw commands inside of Animated Java
    if is_animated_java and len(arguments) > 0 and arguments[0] == "tellraw":
        return

    # Test target selectors
    for argument in arguments:
        if argument.startswith("@"):
            test_target_selector(argument, line_number, path)

    

def test_command_arguments(arguments: list[str], line_number: int, path: Path):
    if len(arguments) == 0:
        return

    # Handle execute sub-commands
    if arguments[0] == "execute" and len(arguments) > 1:
        test_execute_command(arguments[1:], line_number, path)
    
    # Handle return run command
    if arguments[0] == "return" and len(arguments) > 2 and arguments[1] == "run":
        test_command_arguments(arguments[2:], line_number, path)

    # Handle scoreboard commands
    if arguments[0] == "scoreboard" and len(arguments) > 1:
        if arguments[1] == "objectives" and len(arguments) > 2:
            # RULE: Do not modify scoreboard objective display slots.
            if arguments[2] == "setdisplay":
                log_error("Do not modify scoreboard objective display slots.", line_number, path)

            if arguments[2] in ("add", "modify", "remove") and len(arguments) > 3:
                test_scoreboard_objective(arguments[3], line_number, path)
        if arguments[1] == "players" and len(arguments) > 2:
            if arguments[2] in ("add", "enable", "get", "remove", "reset", "set") and len(arguments) > 4:
                test_scoreboard_objective(arguments[4], line_number, path)
            if arguments[2] == "display" and len(arguments) > 5:
                test_scoreboard_objective(arguments[5], line_number, path)
            if arguments[2] == "operation" and len(arguments) > 7:
                test_scoreboard_objective(arguments[4], line_number, path)
                test_scoreboard_objective(arguments[7], line_number, path)


    # Handle tag commands
    if arguments[0] == "tag" and len(arguments) >= 4:
        test_tag(arguments[3], is_player_target_selector(arguments[1]), line_number, path)

    # Handle schedule commands
    if arguments[0] == "schedule" and len(arguments) >= 3:
        if arguments[1] == "function" and arguments[2] not in scheduled_functions:
            scheduled_functions.append(arguments[2])

    # Simple rules for banned commands

    # RULE: Do not modify installed data packs.
    if arguments[0] == "datapack":
        log_error("Do not modify installed data packs.", line_number, path)

    # RULE: Do not modify the default gamemode.
    if arguments[0] == "defaultgamemode":
        log_error("Do not modify the default gamemode.", line_number, path)

    # RULE: Do not modify difficulty.
    if arguments[0] == "difficulty":
        log_error("Do not modify difficulty.", line_number, path)

    # RULE: Do not modify forceloaded chunks.
    if arguments[0] == "forceload":
        log_error("Do not modify forceloaded chunks.", line_number, path)

    # RULE: Do not modify gamerules.
    if arguments[0] == "gamerule" and len(arguments) > 2:
        log_error("Do not modify gamerules.", line_number, path)

    # RULE: Do not broadcast global messages.
    if arguments[0] == "me":
        log_error("Do not broadcast global messages.", line_number, path)

    # RULE: Do not reload data packs.
    if arguments[0] == "reload":
        log_error("Do not reload data packs.", line_number, path)

    # RULE: Do not broadcast global messages.
    if arguments[0] == "say":
        log_error("Do not broadcast global messages.", line_number, path)

    # RULE: Do not modify world spawn point.
    if arguments[0] == "setworldspawn":
        log_error("Do not modify world spawn point.", line_number, path)

    # RULE: Do not modify spawn points.
    if arguments[0] == "spawnpoint":
        log_error("Do not modify spawn points.", line_number, path)

    # RULE: Do not broadcast global messages.
    if arguments[0] == "teammsg":
        log_error("Do not broadcast global messages.", line_number, path)

    # RULE: Do not modify server tick.
    if arguments[0] == "tick":
        log_error("Do not modify server tick.", line_number, path)

    # RULE: Do not modify world time.
    if arguments[0] == "time" and len(arguments) > 1 and arguments[1] != "query":
        log_error("Do not modify world time.", line_number, path)

    # RULE: Do not broadcast global messages.
    if arguments[0] == "tm":
        log_error("Do not broadcast global messages.", line_number, path)

    # RULE: Do not modify weather.
    if arguments[0] == "weather":
        log_error("Do not modify weather.", line_number, path)

    # RULE: Do not modify the world border.
    if arguments[0] == "worldborder" and len(arguments) > 2:
        log_error("Do not modify the world border.", line_number, path)



def test_execute_command(arguments: list[str], line_number: int, path: Path):
    if len(arguments) == 0:
        return

    # align
    if arguments[0] == "align" and len(arguments) >= 2:
        test_execute_command(arguments[2:], line_number, path)

    # anchored
    if arguments[0] == "anchored" and len(arguments) >= 2:
        test_execute_command(arguments[2:], line_number, path)

    # as
    if arguments[0] == "as" and len(arguments) >= 2:
        test_execute_command(arguments[2:], line_number, path)

    # at
    if arguments[0] == "at" and len(arguments) >= 2:
        test_execute_command(arguments[2:], line_number, path)

    # facing
    if arguments[0] == "facing" and len(arguments) >= 4:
        test_execute_command(arguments[4:], line_number, path)

    # in
    # RULE: Do not use dimensions other than the overworld.
    if arguments[0] == "in" and len(arguments) >= 2:
        log_error("Do not use dimensions other than the overworld.", line_number, path)
        test_execute_command(arguments[2:], line_number, path)

    # on
    if arguments[0] == "on" and len(arguments) >= 2:
        test_execute_command(arguments[2:], line_number, path)

    # positioned
    if arguments[0] == "positioned" and len(arguments) >= 2:
        if arguments[1] == "as" and len(arguments) >= 3:
            test_execute_command(arguments[3:], line_number, path)
        elif arguments[1] == "over" and len(arguments) >= 3:
            test_execute_command(arguments[3:], line_number, path)
        elif len(arguments) >= 4:
            test_execute_command(arguments[4:], line_number, path)

    # rotated
    if arguments[0] == "rotated" and len(arguments) >= 3:
        test_execute_command(arguments[3:], line_number, path)

    # run
    if arguments[0] == "run" and len(arguments) >= 1:
        test_command_arguments(arguments[1:], line_number, path)

    # store
    if arguments[0] == "store" and len(arguments) > 2:
        if arguments[2] == "block" and len(arguments) >= 9:
            test_command_arguments(arguments[9:], line_number, path)
        if arguments[2] == "bossbar" and len(arguments) >= 5:
            test_command_arguments(arguments[5:], line_number, path)
        if arguments[2] == "entity" and len(arguments) >= 7:
            test_command_arguments(arguments[7:], line_number, path)
        if arguments[2] == "score" and len(arguments) >= 5:
            test_scoreboard_objective(arguments[4], line_number, path)
            test_command_arguments(arguments[5:], line_number, path)
        if arguments[2] == "storage" and len(arguments) >= 7:
            test_command_arguments(arguments[7:], line_number, path)

    # summon
    if arguments[0] == "summon" and len(arguments) >= 2:
        test_execute_command(arguments[2:], line_number, path)

    # if/unless
    if arguments[0] in ("if", "unless") and len(arguments) > 1:
        if arguments[1] == "biome" and len(arguments) >= 6:
            test_execute_command(arguments[6:], line_number, path)

        if arguments[1] == "block" and len(arguments) >= 6:
            test_execute_command(arguments[6:], line_number, path)

        if arguments[1] == "blocks" and len(arguments) >= 12:
            test_execute_command(arguments[12:], line_number, path)

        if arguments[1] == "data" and len(arguments) > 2:
            if arguments[2] == "block" and len(arguments) >= 7:
                test_execute_command(arguments[7:], line_number, path)
            if arguments[2] == "entity" and len(arguments) >= 5:
                test_execute_command(arguments[5:], line_number, path)
            if arguments[2] == "storage" and len(arguments) >= 5:
                test_execute_command(arguments[5:], line_number, path)

        if arguments[1] == "dimension" and len(arguments) >= 3:
            test_execute_command(arguments[3:], line_number, path)

        if arguments[1] == "entity" and len(arguments) >= 3:
            test_execute_command(arguments[3:], line_number, path)

        if arguments[1] == "function" and len(arguments) >= 3:
            test_execute_command(arguments[3:], line_number, path)

        if arguments[1] == "items" and len(arguments) > 2:
            if arguments[2] == "block" and len(arguments) >= 8:
                test_execute_command(arguments[8:], line_number, path)
            if arguments[2] == "entity" and len(arguments) >= 6:
                test_execute_command(arguments[6:], line_number, path)

        if arguments[1] == "loaded" and len(arguments) >= 5:
            test_execute_command(arguments[5:], line_number, path)

        if arguments[1] == "predicate" and len(arguments) >= 3:
            test_execute_command(arguments[3:], line_number, path)

        if arguments[1] == "score" and len(arguments) > 4:
            if arguments[4] == "matches" and len(arguments) >= 6:
                test_scoreboard_objective(arguments[3], line_number, path)
                test_execute_command(arguments[6:], line_number, path)
            elif len(arguments) >= 7:
                test_scoreboard_objective(arguments[3], line_number, path)
                test_scoreboard_objective(arguments[6], line_number, path)
                test_execute_command(arguments[7:], line_number, path)




def test_target_selector(target_selector: str, line_number: int, path: Path):
    if not target_selector.startswith("@"):
        return
    
    # RULE: All non-@s target selectors must include distance restrictions.
    if len(target_selector) <= 2:
        if target_selector[1] != "s":
            log_error("All non-@s target selectors must include distance restrictions.", line_number, path)
        return
    
    # Get arguments list
    arguments = [argument.strip() for argument in parse_tokens(target_selector[3:-1], ",", True)]
    used_arguments: list[str] = []
    for argument in arguments:
        argument_type = parse_tokens(argument, "=", True)[0].strip()
        if argument_type not in used_arguments:
            used_arguments.append(argument_type)

    # Determine if the target selector can select players
    player_selector = False
    if target_selector[1] in ("a", "p", "r"):
        player_selector = True
    if target_selector[1] in ("e", "n") and "type" not in used_arguments:
        player_selector = True

    # RULE: All non-@s target selectors must include distance restrictions.
    if target_selector[1] != "s" and "distance" not in used_arguments and not (
        "dx" in used_arguments and
        "dy" in used_arguments and
        "dz" in used_arguments
    ):
        log_error("All non-@s target selectors must include distance restrictions.", line_number, path)

    # RULE: All player target selectors must restrict by the sl.player or sl.player_pvp teams.
    if (
        player_selector and
        "team=sl.player" not in arguments and
        "team=sl.player_pvp" not in arguments and
        "predicate=sl:player" not in arguments
    ):
        log_error("All player target selectors must restrict by the sl.player or sl.player_pvp teams.", line_number, path)


    for argument in arguments:
        parts = [part.strip() for part in parse_tokens(argument, "=", True)]

        # Test tags
        if parts[0] == "tag":
            tag = parts[1]
            if tag.startswith("!"):
                tag = tag[1:]
            test_tag(tag, player_selector, line_number, path)

        # Get scoreboard objectives
        if parts[0] == "scores":
            scores = parse_tokens(parts[1][1:-1], ",", True)
            for score in scores:
                objective = parse_tokens(score, "=", True)[0].strip()
                test_scoreboard_objective(objective, line_number, path)




def is_player_target_selector(target_selector: str) -> bool:
    if not target_selector.startswith("@"):
        return False
    
    # Get arguments list
    arguments = [argument.strip() for argument in parse_tokens(target_selector[3:-1], ",", True)]
    used_arguments: list[str] = []
    for argument in arguments:
        argument_type = parse_tokens(argument, "=", True)[0].strip()
        if argument_type not in used_arguments:
            used_arguments.append(argument_type)

    # Determine if the target selector can select players
    player_selector = False
    if target_selector[1] in ("a", "p", "r"):
        player_selector = True
    if target_selector[1] in ("e", "n") and "type" not in used_arguments:
        player_selector = True

    return player_selector



def test_tag(tag: str, is_from_player: bool, line_number: int, path: Path):
    # RULE: All tags must be namespaced, e.g. namespace.my_tag
    if "." not in tag:
        log_error("All tags must be namespaced, e.g. namespace.my_tag", line_number, path)

    if is_from_player and tag not in player_tags and not tag.startswith("aj."):
        player_tags.append(tag)

def test_scoreboard_objective(objective: str, line_number: int, path: Path):
    # RULE: All scoreboard objectives must be namespaced, e.g. namespace.my_objective
    if "." not in objective:
        log_error("All scoreboard objectives must be namespaced, e.g. namespace.my_objective", line_number, path)

    if objective not in scoreboard_objectives and not objective.startswith("sl."):
        scoreboard_objectives.append(objective)



def test_resource_pack(path: Path):
    # RULE: Do not edit anything in the `minecraft` namespace.
    if (path / "minecraft").exists():
        print("ERROR: Do not edit anything in the 'minecraft' namespace.")
        add_error()




def parse_tokens(string: str, separator: str | list[str], allow_single_quotes: bool, spare_separator: str | list[str] = []) -> list[str]:
    # Initialize variables
    arguments: list[str] = []
    argument = ""
    bracket_count = 0
    in_string = False
    char_escaped = False
    string_type = ""

    if isinstance(separator, str):
        separator = [separator]
    if isinstance(spare_separator, str):
        spare_separator = [spare_separator]

    # Iterate through string
    for char in string:
        # Manage end separator
        if char in spare_separator and bracket_count == 0 and not in_string:
            if argument:
                arguments.append(argument)
            argument = ""

        # Check separator conditions
        if char in separator and bracket_count == 0 and not in_string:
            if argument:
                arguments.append(argument)
            argument = ""
            continue

        # Count brackets
        char_list = ["[", "]", "{", "}", "(", ")"]
        if not in_string and char in char_list:
            bracket_count += [1, -1][char_list.index(char) % 2]

        # Add character to argument
        if bracket_count >= 0:
            argument += char

        # Manage string state
        if in_string:
            if char_escaped:
                char_escaped = False
            else:
                if char == "\\":
                    char_escaped = True
                elif string_type == "single" and char == "'":
                    in_string = False
                    string_type = ""
                elif string_type == "double" and char == '"':
                    in_string = False
                    string_type = ""
            continue

        if allow_single_quotes and char == "'":
            in_string = True
            string_type = "single"
        if char == '"':
            in_string = True
            string_type = "double"

        # Add argument if separator list contains empty string
        if "" in separator and bracket_count == 0 and not in_string:
            arguments.append(argument)
            argument = ""

    # Append last argument to arguments
    if argument:
        arguments.append(argument)
    return arguments



if __name__ == "__main__":
    prompt_for_pack()