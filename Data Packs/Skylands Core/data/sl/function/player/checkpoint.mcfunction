# Teleport player to the previous checkpoint
function sl:player/checkpoint/send_to

# Add plate cooldown tag
tag @s[tag=!sl.disable_plate_checkpoint] add sl.plate_checkpoint_cooldown

# Run recall function
function sl:plot/recall