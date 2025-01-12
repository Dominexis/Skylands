# Determine if player is on checkpoint
scoreboard players set #is_on_plate_checkpoint sl.value 0

execute if block ~-0.2375 ~ ~-0.2375 #sl:plate_checkpoint run scoreboard players set #is_on_plate_checkpoint sl.value 1
execute if block ~00.2375 ~ ~-0.2375 #sl:plate_checkpoint run scoreboard players set #is_on_plate_checkpoint sl.value 1
execute if block ~-0.2375 ~ ~00.2375 #sl:plate_checkpoint run scoreboard players set #is_on_plate_checkpoint sl.value 1
execute if block ~00.2375 ~ ~00.2375 #sl:plate_checkpoint run scoreboard players set #is_on_plate_checkpoint sl.value 1

# Set checkpoint if the player is on it and is not on cooldown
execute if score #is_on_plate_checkpoint sl.value matches 1 if entity @s[tag=!sl.plate_checkpoint_cooldown] run function sl:player/checkpoint/plate/set
execute if score #is_on_plate_checkpoint sl.value matches 0 run tag @s remove sl.plate_checkpoint_cooldown