
# effect
execute if score @s pc.duration matches ..10 run tp @s ~ ~-0.1 ~
execute if score @s pc.duration matches 11 run function pc:void

# fx
particle minecraft:dust{color:[0.8,0.282,0.153],scale:1.0f} ~ ~0.25 ~ 0.75 0 0.75 0 3 force