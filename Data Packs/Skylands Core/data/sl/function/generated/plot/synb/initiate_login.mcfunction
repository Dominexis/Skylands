# Set checkpoint
spawnpoint @s 3352 69 -2399

scoreboard players set @s sl.checkpoint_x 3352
scoreboard players set @s sl.checkpoint_y 69
scoreboard players set @s sl.checkpoint_z -2399
scoreboard players set @s sl.checkpoint_yaw 0
scoreboard players set @s sl.checkpoint_pitch 0
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in