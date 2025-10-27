# Set checkpoint
spawnpoint @s 2816 65 3840

scoreboard players set @s sl.checkpoint_x 2816
scoreboard players set @s sl.checkpoint_y 65
scoreboard players set @s sl.checkpoint_z 3840
scoreboard players set @s sl.checkpoint_yaw 0
scoreboard players set @s sl.checkpoint_pitch 0
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in