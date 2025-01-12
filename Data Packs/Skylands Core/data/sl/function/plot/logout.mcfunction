# Run plot logout function
data modify storage sl:data macro.function_name set value "logout"
execute store result storage sl:data macro.plot_id int 1 run scoreboard players get @s sl.plot
function sl:plot/get_plot_name with storage sl:data macro
function sl:plot/generated_function_call with storage sl:data macro

# Clear things off of player
clear @s
effect clear @s

# Reset base attributes
attribute @s minecraft:armor base reset
attribute @s minecraft:armor_toughness base reset
attribute @s minecraft:attack_damage base reset
attribute @s minecraft:attack_knockback base reset
attribute @s minecraft:attack_speed base reset
attribute @s minecraft:knockback_resistance base reset
attribute @s minecraft:luck base reset
attribute @s minecraft:max_absorption base reset
attribute @s minecraft:max_health base reset
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:scale base reset
attribute @s minecraft:step_height base reset
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:block_interaction_range base reset
attribute @s minecraft:entity_interaction_range base reset
attribute @s minecraft:block_break_speed base reset
attribute @s minecraft:gravity base reset
attribute @s minecraft:safe_fall_distance base reset
attribute @s minecraft:fall_damage_multiplier base reset
attribute @s minecraft:burning_time base reset
attribute @s minecraft:explosion_knockback_resistance base reset
attribute @s minecraft:mining_efficiency base reset
attribute @s minecraft:movement_efficiency base reset
attribute @s minecraft:oxygen_bonus base reset
attribute @s minecraft:sneaking_speed base reset
attribute @s minecraft:submerged_mining_speed base reset
attribute @s minecraft:sweeping_damage_ratio base reset
attribute @s minecraft:water_movement_efficiency base reset

# Remove tags from player
tag @s remove sl.plate_checkpoint_cooldown
tag @s remove sl.disable_plate_checkpoint

# Reset checkpoint
spawnpoint @s 0 65 0 0

scoreboard players set @s sl.checkpoint_x 0
scoreboard players set @s sl.checkpoint_y 65
scoreboard players set @s sl.checkpoint_z 0
scoreboard players set @s sl.checkpoint_yaw 0
scoreboard players set @s sl.checkpoint_pitch 0

# Reset plot ID
scoreboard players operation @s sl.plot = #lobby_plot sl.value