# Set checkpoint
spawnpoint @s 440 255 4807

scoreboard players set @s sl.checkpoint_x 440
scoreboard players set @s sl.checkpoint_y 255
scoreboard players set @s sl.checkpoint_z 4807
scoreboard players set @s sl.checkpoint_yaw 71
scoreboard players set @s sl.checkpoint_pitch -7
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in