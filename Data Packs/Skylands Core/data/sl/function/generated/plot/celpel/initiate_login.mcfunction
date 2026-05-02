# Set checkpoint
spawnpoint @s -1846 222 -6395

scoreboard players set @s sl.checkpoint_x -1846
scoreboard players set @s sl.checkpoint_y 222
scoreboard players set @s sl.checkpoint_z -6395
scoreboard players set @s sl.checkpoint_yaw 0
scoreboard players set @s sl.checkpoint_pitch 0
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in