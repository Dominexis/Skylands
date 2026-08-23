
execute if score @s pc.animation matches 1 run data merge entity @s {transformation:{left_rotation:[0.0f,-0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,-0.75f,0.0f]},start_interpolation:0,interpolation_duration:2}
execute if score @s pc.animation matches 3 run data merge entity @s {transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,-0.75f,0.0f]},start_interpolation:0,interpolation_duration:2}
execute if score @s pc.animation matches 5 run data merge entity @s {transformation:{left_rotation:[0.0f,0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,-0.75f,0.0f]},start_interpolation:0,interpolation_duration:2}
execute if score @s pc.animation matches 7 run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,-0.75f,0.0f]},start_interpolation:0,interpolation_duration:2}

execute if score @s pc.animation matches 15 run data merge entity @s {transformation:{left_rotation:[-0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,-0.75f,0.0f]},start_interpolation:0,interpolation_duration:4}
execute if score @s pc.animation matches 15 on vehicle at @s run tp @s ^ ^ ^1.0
execute if score @s pc.animation matches 19 run data merge entity @s {transformation:{left_rotation:[1.0f,0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,-0.25f,0.0f]},start_interpolation:0,interpolation_duration:4}
execute if score @s pc.animation matches 22.. on vehicle at @s run tp @s ^ ^ ^-0.1
execute if score @s pc.animation matches 23 run data merge entity @s {transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,-0.5f,0.0f]},start_interpolation:0,interpolation_duration:4}
execute if score @s pc.animation matches 27 run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5],translation:[0.0f,-0.75f,0.0f]},start_interpolation:0,interpolation_duration:4}

execute if score @s pc.animation matches 31.. run function pc:entity/ender_dragon/fx/attack1/clear