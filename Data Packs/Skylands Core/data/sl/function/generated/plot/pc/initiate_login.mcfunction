# Set checkpoint
spawnpoint @s 2536 63 5608

scoreboard players set @s sl.checkpoint_x 2536
scoreboard players set @s sl.checkpoint_y 63
scoreboard players set @s sl.checkpoint_z 5608
scoreboard players set @s sl.checkpoint_yaw 180
scoreboard players set @s sl.checkpoint_pitch 0
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in