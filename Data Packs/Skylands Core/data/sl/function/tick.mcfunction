# Manage world border timer

execute store result score #world_border_diameter sl.value run worldborder get
execute if score #world_border_reset_timer sl.value matches 0 run function sl:time/reset

scoreboard players operation #time_differential sl.value = #world_border_diameter sl.value
scoreboard players operation #time_differential sl.value -= #previous_world_border_diameter sl.value

execute unless score #world_border_diameter sl.value matches 59900000..59990000 run function sl:time/reset
execute if score #time_differential sl.value matches 1000.. run function sl:time/reset
execute if score #time_differential sl.value matches 0..999 unless score #world_border_diameter sl.value matches 59990000.. run scoreboard players operation #time sl.value += #time_differential sl.value

execute if score #world_border_reset_timer sl.value matches 000 run scoreboard players set #previous_world_border_diameter sl.value 59900000
execute if score #world_border_reset_timer sl.value matches 1.. run scoreboard players operation #previous_world_border_diameter sl.value = #world_border_diameter sl.value

scoreboard players add #world_border_reset_timer sl.value 1
execute if score #world_border_reset_timer sl.value matches 200.. run scoreboard players set #world_border_reset_timer sl.value 0

scoreboard players operation #time_start sl.value = #time sl.value







# Player functions

# Manage player effects
effect give @a minecraft:saturation infinite 0 true

# Manage triggers
scoreboard players enable @a lobby
scoreboard players enable @a play
scoreboard players enable @a spectate
scoreboard players enable @a checkpoint
scoreboard players enable @a night_vision

# Handle player logins
scoreboard players add #global sl.ticks 1
scoreboard players add @a sl.ticks 1
execute as @a unless score @s sl.ticks = #global sl.ticks at @s run function sl:player/login

# Handle night vision for spectators
execute as @a unless score @s sl.night_vision = @s sl.night_vision run scoreboard players set @s sl.night_vision 1
effect give @a[scores={sl.night_vision=1},team=sl.spectator] minecraft:night_vision infinite 0 true

# Handle player deaths
execute as @e[type=minecraft:player,scores={sl.death=1..}] at @s run function sl:player/respawn

# Manage plate checkpoints
# execute as @a[tag=sl.plate_checkpoint,team=sl.player] at @s run function sl:player/checkpoint/is_on_plate
# execute as @a[tag=sl.plate_checkpoint,tag=!sl.plate_checkpoint_cooldown,tag=sl.is_on_plate_checkpoint,team=sl.player] at @s run function sl:player/checkpoint/plate
# execute as @a[tag=sl.plate_checkpoint_cooldown,tag=!sl.is_on_plate_checkpoint] at @s run tag @s remove sl.plate_checkpoint_cooldown

# Handle checkpoint trigger for spectators
execute as @a[scores={checkpoint=1..},team=sl.spectator] run scoreboard players set @s lobby 1
execute as @a[scores={checkpoint=1..},team=sl.spectator] run scoreboard players set @s checkpoint 0

# Auto-spectate players not on a team
execute as @a[team=] run trigger spectate

# Manage triggers
# execute as @a[scores={lobby=1..}] run function sl:player/checkpoint/lobby
# execute as @a[scores={play=1..}] run function sl:player/play
# execute as @a[scores={spectate=1..}] run function sl:player/spectate
# execute as @a[scores={checkpoint=1..}] run function sl:player/checkpoint/send_to
# execute as @a[scores={night_vision=1..}] at @s run function sl:player/night_vision

# Manage speedrun timer
# execute as @a if score @s sl.plot = #spawn_plot sl.value run scoreboard players set @s sl.time 0
# execute as @a[team=sl.player] unless score @s sl.plot = #spawn_plot sl.value run function sl:player/time/tick
# scoreboard players operation #previous_time sl.value = #time sl.value
# scoreboard players set @a[team=sl.spectator] sl.time 0

# Manage cooldowns
# execute as @a[scores={sl.stop_launch_sound=1..}] run stopsound @a[distance=..32] block minecraft:entity.generic.explode
# scoreboard players remove @a[scores={sl.stop_launch_sound=1..}] sl.stop_launch_sound 1
# scoreboard players remove @a[scores={sl.checkpoint_cooldown=1..}] sl.checkpoint_cooldown 1
# execute as @a[scores={sl.title_cooldown=1..}] run scoreboard players remove @s sl.title_cooldown 1

# Manage spectator and leaderboard tags
# tag @a remove sl.spectator
# tag @a[team=sl.spectator] add sl.spectator
# tag @a remove sl.leaderboard_placement

# Launch forward test
# execute as @a[tag=sl.launch] at @s run function sl:player/launch/apply/forward
# tag @a remove sl.launch

# Crop protection
execute as @a[gamemode=!spectator] at @s if block ~-0.3 ~-1 ~-0.3 minecraft:farmland run effect give @s minecraft:slow_falling 1 0 true
execute as @a[gamemode=!spectator] at @s if block ~-0.3 ~-1 ~00.3 minecraft:farmland run effect give @s minecraft:slow_falling 1 0 true
execute as @a[gamemode=!spectator] at @s if block ~00.3 ~-1 ~-0.3 minecraft:farmland run effect give @s minecraft:slow_falling 1 0 true
execute as @a[gamemode=!spectator] at @s if block ~00.3 ~-1 ~00.3 minecraft:farmland run effect give @s minecraft:slow_falling 1 0 true



# Tick plots
function sl:plot/main



# Make paintings and item frames invulnerable
execute as @e[type=#sl:hangable,tag=!sl.processed] run function sl:generic/process_hangable



# Send tips
scoreboard players add #tip_timer sl.value 1
execute if score #tip_timer sl.value matches 2400.. run function sl:tip



# Compute MSPT

function sl:time/get

scoreboard players operation #mspt sl.value = #time sl.value
scoreboard players operation #mspt sl.value -= #time_start sl.value
execute if score #mspt sl.value matches ..20 run title @a[tag=mspt] actionbar [{"text":"MSPT: "},{"score":{"name":"#mspt","objective":"sl.value"},"color":"green"}]
execute if score #mspt sl.value matches 21..40 run title @a[tag=mspt] actionbar [{"text":"MSPT: "},{"score":{"name":"#mspt","objective":"sl.value"},"color":"yellow"}]
execute if score #mspt sl.value matches 41..50 run title @a[tag=mspt] actionbar [{"text":"MSPT: "},{"score":{"name":"#mspt","objective":"sl.value"},"color":"gold"}]
execute if score #mspt sl.value matches 51.. run title @a[tag=mspt] actionbar [{"text":"MSPT: "},{"score":{"name":"#mspt","objective":"sl.value"},"color":"red"}]