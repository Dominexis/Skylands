
execute if score @s pc.animation matches ..5 on vehicle at @s run tp @s ~ ~0.1 ~
execute if score @s pc.animation matches ..10 on vehicle at @s run tp @s ~ ~0.1 ~
execute if score @s pc.animation matches ..20 on vehicle at @s run tp @s ~ ~0.1 ~

execute if score @s pc.animation matches 2 run data merge entity @s {transformation:{left_rotation:[-0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:5}
execute if score @s pc.animation matches 7 run data merge entity @s {transformation:{left_rotation:[1.0f,0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:5}
execute if score @s pc.animation matches 12 run data merge entity @s {transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:5}
execute if score @s pc.animation matches 17 run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:5}

execute if score @s pc.animation matches 20 run function pc:entity/ender_dragon/fx/buff1/2

execute if score @s pc.animation matches 30.. on vehicle at @s run tp @s ~ ~-0.1 ~
execute if score @s pc.animation matches 40.. on vehicle at @s run tp @s ~ ~-0.1 ~
execute if score @s pc.animation matches 45.. on vehicle at @s run tp @s ~ ~-0.1 ~

execute if score @s pc.animation matches 49.. at @s run function pc:entity/ender_dragon/buff1/clear