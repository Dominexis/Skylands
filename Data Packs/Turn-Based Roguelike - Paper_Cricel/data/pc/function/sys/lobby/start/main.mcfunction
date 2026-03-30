
# effect
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 1..40 run tp @s ~ ~-0.01 ~
execute if score @s pc.duration matches 41..80 run tp @s ~ ~0.01 ~
execute if score @s pc.duration matches 80.. run scoreboard players reset @s pc.duration