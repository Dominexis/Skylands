
# effect
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 1 run tp @s ~0.03 ~ ~0.02
execute if score @s pc.duration matches 2 run tp @s ~-0.04 ~ ~0.01
execute if score @s pc.duration matches 3 run tp @s ~0.02 ~ ~-0.04
execute if score @s pc.duration matches 4 run tp @s ~-0.01 ~ ~0.03
execute if score @s pc.duration matches 5 run tp @s ~0.05 ~ ~-0.02
execute if score @s pc.duration matches 6 run tp @s ~-0.03 ~ ~-0.01
execute if score @s pc.duration matches 7 run tp @s ~-0.02 ~ ~0.04
execute if score @s pc.duration matches 8 run tp @s ~0.04 ~ ~-0.03
execute if score @s pc.duration matches 9 run tp @s ~0.01 ~ ~0.01
execute if score @s pc.duration matches 10 run tp @s ~-0.05 ~ ~-0.01
execute if score @s pc.duration matches 10.. run scoreboard players reset @s pc.duration