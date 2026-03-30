
# effect
scoreboard players add @s pc.duration 1
execute if entity @s[tag=pc.effect.fire_area.clear] run return run function pc:fx/fire_area/clear/main
execute if score @s pc.duration matches ..10 run tp @s ~ ~0.1 ~

# fx
particle minecraft:dust{color:[0.8,0.282,0.153],scale:1.0f} ~ ~-0.2 ~ 0.75 0 0.75 0 3 force