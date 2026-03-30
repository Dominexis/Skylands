
# effect
execute on passengers if entity @s[tag=pc.mob.ender_eye.left_wing] run data merge entity @s {transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,0.5f],translation:[0.5625f,-0.35f,0.004928496f]},start_interpolation:0,interpolation_duration:40}
execute on passengers if entity @s[tag=pc.mob.ender_eye.right_wing] run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,0.5f],translation:[-0.5625f,-0.35f,0.004928496f]},start_interpolation:0,interpolation_duration:40}
scoreboard players reset @s pc.fx.float_eye

# fx