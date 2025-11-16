# Set checkpoint
spawnpoint @s 5888 65 -3328

scoreboard players set @s sl.checkpoint_x 5888
scoreboard players set @s sl.checkpoint_y 65
scoreboard players set @s sl.checkpoint_z -3328
scoreboard players set @s sl.checkpoint_yaw 180
scoreboard players set @s sl.checkpoint_pitch 0
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in