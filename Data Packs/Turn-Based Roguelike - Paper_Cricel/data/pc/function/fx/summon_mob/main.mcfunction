
# effect
scoreboard players add @s pc.duration 1
execute rotated ~9.0 0 run tp @s ^ ^0.46930339512069275 ^0.46930339512069275 ~9.0 0
execute if score @s pc.duration matches 40.. run kill @s

# fx
particle minecraft:dust_color_transition{from_color:[0.5,0.1,0.1],scale:2.0f,to_color:[0.1,0.0,0.0]} ~ ~ ~ 0 0 0 1 0 force