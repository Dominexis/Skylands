
# effect
tp @s ~ ~0.05 ~

scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 1 run data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 3.0f, 3.0f], translation: [0.0f, -0.375f, 0.0f]},start_interpolation:0,interpolation_duration:1}

scoreboard players set #opacity pc.main 61
execute store result entity @s text_opacity byte 4.25 run scoreboard players operation #opacity pc.main -= @s pc.duration

execute if score @s pc.duration matches 60.. run kill @s