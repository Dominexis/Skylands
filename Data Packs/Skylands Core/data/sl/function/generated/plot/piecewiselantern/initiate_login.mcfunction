# Set checkpoint
spawnpoint @s -1251 -9 -1352

scoreboard players set @s sl.checkpoint_x -1251
scoreboard players set @s sl.checkpoint_y -9
scoreboard players set @s sl.checkpoint_z -1352
scoreboard players set @s sl.checkpoint_yaw 90
scoreboard players set @s sl.checkpoint_pitch 0
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in