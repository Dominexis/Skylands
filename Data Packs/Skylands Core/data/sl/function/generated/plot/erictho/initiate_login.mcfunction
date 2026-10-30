# Set checkpoint
spawnpoint @s 6372 69 3907

scoreboard players set @s sl.checkpoint_x 6372
scoreboard players set @s sl.checkpoint_y 69
scoreboard players set @s sl.checkpoint_z 3907
scoreboard players set @s sl.checkpoint_yaw 90
scoreboard players set @s sl.checkpoint_pitch 0
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in