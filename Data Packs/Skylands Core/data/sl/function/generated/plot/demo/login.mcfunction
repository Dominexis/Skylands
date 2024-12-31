# Remove player from queue
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
team join sl.player @s[team=!sl.player]

# Set checkpoint
spawnpoint @s 1792 65 256 0

scoreboard players set @s sl.checkpoint_x 1792
scoreboard players set @s sl.checkpoint_y 65
scoreboard players set @s sl.checkpoint_z 256
scoreboard players set @s sl.checkpoint_yaw 0
scoreboard players set @s sl.checkpoint_pitch 0
function sl:player/checkpoint/send_to

# Run login function
function demo:login