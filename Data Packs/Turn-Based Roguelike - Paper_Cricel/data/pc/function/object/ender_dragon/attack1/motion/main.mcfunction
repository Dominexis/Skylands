
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 1 run data merge entity @s {transformation:{left_rotation:[0.0f,-0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:2}
execute if score @s pc.duration matches 3 run data merge entity @s {transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:2}
execute if score @s pc.duration matches 5 run data merge entity @s {transformation:{left_rotation:[0.0f,0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:2}
execute if score @s pc.duration matches 7 run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:2}

execute if score @s pc.duration matches 15 run data merge entity @s {transformation:{left_rotation:[-0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:3}
execute if score @s pc.duration matches 15 run tp @s ^ ^ ^0.5
execute if score @s pc.duration matches 18 run data merge entity @s {transformation:{left_rotation:[1.0f,0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:3}
execute if score @s pc.duration matches 21 run data merge entity @s {transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:3}
execute if score @s pc.duration matches 21 run tp @s ^ ^ ^-0.25
execute if score @s pc.duration matches 24 run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:3}
execute if score @s pc.duration matches 24 run tp @s ^ ^ ^-0.25
execute if score @s pc.duration matches 27.. run function pc:object/ender_dragon/attack1/motion/clear