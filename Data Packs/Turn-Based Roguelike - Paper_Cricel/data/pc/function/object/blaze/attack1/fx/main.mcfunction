
# effect
scoreboard players add @s pc.duration 1

tp @s ^ ^ ^0.75
execute positioned ~-1.5 ~-100 ~-1.5 if entity @e[type=!minecraft:player,dx=2,dy=200,dz=2,limit=1,predicate=pc:object/ally] run function pc:object/blaze/attack1/fx/2
execute if score @s pc.duration matches 40.. run function pc:object/blaze/attack1/fx/clear

# fx
particle minecraft:dust_color_transition{from_color:[0.612,0.067,0.067],scale:1.5f,to_color:[1.0,0.545,0.322]} ~ ~ ~ 0.2 0.2 0.2 0 1 force
particle minecraft:block{block_state:{Name:"minecraft:lava"}} ~ ~ ~ 0 0 0 1 1 force