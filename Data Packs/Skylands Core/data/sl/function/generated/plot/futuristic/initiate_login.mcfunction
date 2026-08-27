# Set checkpoint
spawnpoint @s -3381 70 4882

scoreboard players set @s sl.checkpoint_x -3381
scoreboard players set @s sl.checkpoint_y 70
scoreboard players set @s sl.checkpoint_z 4882
scoreboard players set @s sl.checkpoint_yaw -180
scoreboard players set @s sl.checkpoint_pitch 0
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in