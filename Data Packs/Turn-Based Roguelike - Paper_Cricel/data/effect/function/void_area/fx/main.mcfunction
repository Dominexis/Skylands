
scoreboard players add @s pc.duration 1
execute if entity @s[tag=pc.effect.void_area.clear] run return run function effect:void_area/fx/clear/main

execute if score @s pc.duration matches 2..40 run data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 0.01f, 3.0f], translation: [0.0f, 0.0f, 0.0f]}, start_interpolation: 0, interpolation_duration: 10}
execute if predicate {condition:"random_chance",chance:0.25} run function effect:void_area/fx/digit/use
execute if predicate {condition:"random_chance",chance:0.1} run particle instant_effect{color:[1.000, 0.341, 0.945]} ~ ~ ~ 0.75 0 0.75 0 2 force