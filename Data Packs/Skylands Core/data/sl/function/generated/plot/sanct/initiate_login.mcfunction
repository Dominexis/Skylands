# Set checkpoint
spawnpoint @s -2310 7 2307

scoreboard players set @s sl.checkpoint_x -2310
scoreboard players set @s sl.checkpoint_y 7
scoreboard players set @s sl.checkpoint_z 2307
scoreboard players set @s sl.checkpoint_yaw 0
scoreboard players set @s sl.checkpoint_pitch 0
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in