# Set checkpoint
spawnpoint @s 2807 115 -267

scoreboard players set @s sl.checkpoint_x 2807
scoreboard players set @s sl.checkpoint_y 115
scoreboard players set @s sl.checkpoint_z -267
scoreboard players set @s sl.checkpoint_yaw -90
scoreboard players set @s sl.checkpoint_pitch 0
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in