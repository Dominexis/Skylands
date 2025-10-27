# Set checkpoint
spawnpoint @s 731 65 -5287

scoreboard players set @s sl.checkpoint_x 731
scoreboard players set @s sl.checkpoint_y 65
scoreboard players set @s sl.checkpoint_z -5287
scoreboard players set @s sl.checkpoint_yaw -152
scoreboard players set @s sl.checkpoint_pitch -5
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in