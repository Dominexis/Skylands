
scoreboard players add @s pc.duration 1

tp @s ~ ~0.1 ~

execute if score @s pc.duration matches 2 run data merge entity @s {transformation:{translation: [0.0f, -0.96f, 0.0f], scale:[0.0f, 16.0f, 0.0f]},interpolation_duration:8}
execute if score @s pc.duration matches 10.. run kill @s