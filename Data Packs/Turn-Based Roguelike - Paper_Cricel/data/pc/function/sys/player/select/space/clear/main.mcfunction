
# effect
tp @s ~ ~-0.5 ~
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 2.. run kill @s