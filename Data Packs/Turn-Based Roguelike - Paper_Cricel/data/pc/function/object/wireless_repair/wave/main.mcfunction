
# effect
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 1 run data merge entity @s {transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [50.000008f, 50.000015f, 50.000015f], translation: [-1.0f, 0.0f, 5.9f]},start_interpolation:0,interpolation_duration:10}
execute if score @s pc.duration matches 11 run data merge entity @s {transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [55.000008f, 55.000015f, 55.000015f], translation: [-1.1f, 0.0f, 6.49f]},start_interpolation:0,interpolation_duration:5}
execute if score @s pc.duration matches 16 run function pc:void