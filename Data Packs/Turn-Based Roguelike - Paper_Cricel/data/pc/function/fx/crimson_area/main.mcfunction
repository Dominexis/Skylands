
# effect
scoreboard players add @s pc.duration 1
execute if entity @s[tag=pc.effect.crimson_area.clear] run return run function pc:fx/crimson_area/clear/main
execute if score @s pc.duration matches ..10 run tp @s ~ ~0.1 ~

# fx
particle minecraft:crimson_spore ~ ~ ~ 0.5 0 0.5 0 1 force