# Teleport to the checkpoint
execute store result storage sl:data macro.x int 1 run scoreboard players get @s sl.checkpoint_x
execute store result storage sl:data macro.y int 1 run scoreboard players get @s sl.checkpoint_y
execute store result storage sl:data macro.z int 1 run scoreboard players get @s sl.checkpoint_z
execute store result storage sl:data macro.yaw int 1 run scoreboard players get @s sl.checkpoint_yaw
execute store result storage sl:data macro.pitch int 1 run scoreboard players get @s sl.checkpoint_pitch
function sl:generic/teleport_rotation with storage sl:data macro