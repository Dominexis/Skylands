
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches ..5 at @s run tp @s ~ ~0.1 ~
execute if score @s pc.duration matches ..10 at @s run tp @s ~ ~0.1 ~
execute if score @s pc.duration matches ..20 at @s run tp @s ~ ~0.1 ~

execute if score @s pc.duration matches 2 run data merge entity @s {transformation:{left_rotation:[-0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:5}
#execute if score @s pc.duration matches 2 at @s run tp @s ^ ^ ^0.5
execute if score @s pc.duration matches 7 run data merge entity @s {transformation:{left_rotation:[1.0f,0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:5}
execute if score @s pc.duration matches 12 run data merge entity @s {transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:5}
#execute if score @s pc.duration matches 12 at @s run tp @s ^ ^ ^-0.25
execute if score @s pc.duration matches 17 run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:5}
#execute if score @s pc.duration matches 17 at @s run tp @s ^ ^ ^-0.25

execute if score @s pc.duration matches 20 run function pc:object/ender_dragon/interphase/vibration/use

execute if score @s pc.duration matches 30.. at @s run tp @s ~ ~-0.1 ~
execute if score @s pc.duration matches 40.. at @s run tp @s ~ ~-0.1 ~
execute if score @s pc.duration matches 45.. at @s run tp @s ~ ~-0.1 ~
execute if score @s pc.duration matches 49.. at @s run function pc:object/ender_dragon/interphase/clear