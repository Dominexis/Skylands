# Get time

execute store result score #world_border_diameter sl.value run worldborder get

scoreboard players operation #time_differential sl.value = #world_border_diameter sl.value
scoreboard players operation #time_differential sl.value -= #previous_world_border_diameter sl.value

execute if score #time_differential sl.value matches 0..999 run scoreboard players operation #time sl.value += #time_differential sl.value

scoreboard players operation #previous_world_border_diameter sl.value = #world_border_diameter sl.value