# Set checkpoint
spawnpoint @s 1792 65 256

scoreboard players set @s sl.checkpoint_x 1792
scoreboard players set @s sl.checkpoint_y 65
scoreboard players set @s sl.checkpoint_z 256
scoreboard players set @s sl.checkpoint_yaw 0
scoreboard players set @s sl.checkpoint_pitch 0
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in