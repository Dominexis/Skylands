
# effect
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 2 run data merge entity @s {teleport_duration:3,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 3.0f, 3.0f], translation: [-0.075f, -0.5f, 0.0f]},start_interpolation:0,interpolation_duration:2}
tp @s ~ ~-0.05 ~

execute if score @s pc.duration matches 15.. run function pc:void