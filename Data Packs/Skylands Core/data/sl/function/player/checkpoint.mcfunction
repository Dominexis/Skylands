# Send player to lobby if they are a spectator
scoreboard players set @s[team=sl.spectator] checkpoint 0
execute if entity @s[team=sl.spectator] run return run trigger lobby

# Teleport player to the previous checkpoint
function sl:player/checkpoint/send_to

# Run recall function
function sl:plot/recall

# Reset checkpoint trigger
execute if score @s checkpoint matches 1.. run tellraw @s {"text":"You have been sent to the previous checkpoint","color":"gold"}
scoreboard players set @s checkpoint 0