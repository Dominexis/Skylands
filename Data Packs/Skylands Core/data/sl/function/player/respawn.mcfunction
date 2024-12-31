# Reset death score
scoreboard players set @s sl.death 0

# Teleport player to the previous checkpoint
function sl:player/checkpoint/send_to

# Run recall function
function sl:plot/recall