
# effect
tp @s ~0.025 ~0.025 ~-0.025
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches 1 run data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 4.0f, 4.0f], translation: [0.0f, 0.0f, 0.0f]},start_interpolation:0,interpolation_duration:59}
execute if score @s pc.duration matches 60.. run kill @s