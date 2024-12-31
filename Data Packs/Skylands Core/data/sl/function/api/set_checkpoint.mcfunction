# Set the executing player's checkpoint to the current execution position
execute align xyz run spawnpoint @s ~0.5 ~ ~0.5 ~

function sl:api/get_context

scoreboard players operation @s sl.checkpoint_x = #x sl.value
scoreboard players operation @s sl.checkpoint_y = #y sl.value
scoreboard players operation @s sl.checkpoint_z = #z sl.value
scoreboard players operation @s sl.checkpoint_yaw = #yaw sl.value
scoreboard players operation @s sl.checkpoint_pitch = #pitch sl.value