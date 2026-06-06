# Set checkpoint
spawnpoint @s 3321 6 5354

scoreboard players set @s sl.checkpoint_x 3321
scoreboard players set @s sl.checkpoint_y 6
scoreboard players set @s sl.checkpoint_z 5354
scoreboard players set @s sl.checkpoint_yaw 90
scoreboard players set @s sl.checkpoint_pitch 0
function sl:player/checkpoint/send_to

# Prepare player to log into plot
effect clear @s minecraft:blindness
gamemode adventure @s[gamemode=!adventure]
function sl:player/fade/in