
# effect
scoreboard players add @s pc.duration 1

tp @s ~ ~0.1 ~ ~10 ~
execute if score @s pc.duration matches 2 run data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [0.0f, 0.0f, 0.0f]}, teleport_duration:1, start_interpolation:0, interpolation_duration:10}
execute if score @s pc.duration matches 40 run data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}, start_interpolation:0, interpolation_duration:10}
execute if score @s pc.duration matches 50.. run kill @s

# fx