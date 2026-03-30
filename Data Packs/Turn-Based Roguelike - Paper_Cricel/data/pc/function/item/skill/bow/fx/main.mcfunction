
# effect
tp @s ^ ^ ^1
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 20.. run function pc:void

# fx
particle dust{color:[1.000,0.824,0.341],scale:1} ~ ~ ~ 0 0 0 1 0 force