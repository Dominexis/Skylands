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
effect give @a[tag=!sl.no_saturation] minecraft:saturation infinite 0 true
effect clear @a[tag=sl.no_saturation] minecraft:saturation
effect clear @a[tag=sl.slow_falling_tick] minecraft:slow_falling
tag @a remove sl.slow_falling_tick

# Manage triggers
scoreboard players enable @a lobby
scoreboard players enable @a play
scoreboard players enable @a spectate
scoreboard players enable @a checkpoint
scoreboard players enable @a night_vision
execute if score #dev_mode sl.value matches 0 run scoreboard players reset @a plot
execute if score #dev_mode sl.value matches 1 run scoreboard players enable @a plot

# Handle player logins
scoreboard players add #ticks sl.value 1
scoreboard players add @a sl.ticks 1
execute as @a unless score @s sl.ticks = #ticks sl.value at @s run function sl:player/login

# Handle fade in and fade out
execute as @a unless score @s sl.fade_timer matches 0 at @s run function sl:player/fade/tick
execute as @a[scores={sl.collection_timer=1..}] run function sl:player/collection_timer

# Handle night vision for spectators
execute as @a unless score @s sl.night_vision = @s sl.night_vision run scoreboard players set @s sl.night_vision 1
effect give @a[scores={sl.night_vision=1},team=sl.spectator] minecraft:night_vision infinite 0 true

# Handle player deaths
execute as @e[type=minecraft:player,scores={sl.death=1..}] at @s run function sl:player/respawn

# Manage plate checkpoints
execute as @a[tag=!sl.disable_plate_checkpoint,predicate=sl:player] at @s unless score @s sl.plot = #lobby_plot sl.value run function sl:player/checkpoint/plate/main

# Auto-spectate players not on a team
execute as @a[team=] run trigger spectate

# Manage triggers
execute as @a[scores={lobby=1..}] run function sl:player/trigger/lobby
execute as @a[scores={play=1..}] run function sl:player/trigger/play
execute as @a[scores={spectate=1..}] run function sl:player/trigger/spectate
execute as @a[scores={checkpoint=1..}] run function sl:player/trigger/checkpoint
execute as @a[scores={night_vision=1..}] run function sl:player/trigger/night_vision
execute as @a[scores={plot=1..}] run function sl:player/trigger/plot

# Manage speedrun timer
# execute as @a if score @s sl.plot = #lobby_plot sl.value run scoreboard players set @s sl.time 0
# execute as @a[predicate=sl:player] unless score @s sl.plot = #lobby_plot sl.value run function sl:player/time/tick
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
function sl:generated/tick

# Resync plot counts every second
scoreboard players operation #cycle sl.value = #ticks sl.value
scoreboard players operation #cycle sl.value %= #20 sl.value
execute if score #cycle sl.value matches 0 run function sl:generated/sync_plot_counts

# Tick collectibles
execute as @e[type=minecraft:item_display,tag=sl.collectible] at @s if entity @a[distance=..64] run function sl:collectible/tick



# Make paintings and item frames invulnerable
execute if score #dev_mode sl.value matches 0 as @e[type=#sl:hangable,tag=!sl.processed] run function sl:generic/process_hangable



# Send tips
scoreboard players add #tip_timer sl.value 1
execute if score #tip_timer sl.value matches 2400.. run function sl:tip



# Compute MSPT
function sl:time/get

scoreboard players operation #mspt sl.value = #time sl.value
scoreboard players operation #mspt sl.value -= #time_start sl.value
execute if score #mspt sl.value matches ..20 run title @a[tag=mspt] actionbar [{text:"MSPT: ",type:"text"},{score:{name:"#mspt",objective:"sl.value"},color:"green",type:"score"}]
execute if score #mspt sl.value matches 21..40 run title @a[tag=mspt] actionbar [{text:"MSPT: ",type:"text"},{score:{name:"#mspt",objective:"sl.value"},color:"yellow",type:"score"}]
execute if score #mspt sl.value matches 41..50 run title @a[tag=mspt] actionbar [{text:"MSPT: ",type:"text"},{score:{name:"#mspt",objective:"sl.value"},color:"gold",type:"score"}]
execute if score #mspt sl.value matches 51.. run title @a[tag=mspt] actionbar [{text:"MSPT: ",type:"text"},{score:{name:"#mspt",objective:"sl.value"},color:"red",type:"score"}]