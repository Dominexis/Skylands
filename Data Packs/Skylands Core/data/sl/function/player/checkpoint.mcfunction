# Teleport player to the previous checkpoint
function sl:player/checkpoint/send_to

# Add plate cooldown tag
tag @s[tag=!sl.disable_plate_checkpoint] add sl.plate_checkpoint_cooldown

# Give player slow falling to prevent fall damage
effect give @s minecraft:slow_falling 1 0 true
tag @s add sl.slow_falling_tick

# Run recall function
execute at @s run function sl:plot/recall