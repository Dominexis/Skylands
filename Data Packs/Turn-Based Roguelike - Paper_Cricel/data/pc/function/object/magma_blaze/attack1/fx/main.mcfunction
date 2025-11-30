
# effect
scoreboard players add @s pc.duration 1

execute at @s run function pc:object/magma_blaze/attack1/fx/2
execute at @s run function pc:object/magma_blaze/attack1/fx/2
execute if score @s pc.duration matches 15.. run kill @s

# fx
particle dust_color_transition{from_color:[0.612,0.067,0.067],scale:1.5,to_color:[1.000,0.545,0.322]} ~ ~ ~ 0.2 0.2 0.2 0 1 force
particle minecraft:block{block_state:"lava"} ~ ~ ~ 0 0 0 1 2 force