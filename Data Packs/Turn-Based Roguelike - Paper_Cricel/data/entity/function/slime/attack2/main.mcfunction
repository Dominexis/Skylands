
scoreboard players add @s pc.duration 1

tp @s ^ ^ ^1.0
execute positioned ~-0.5 ~-100 ~-0.5 if entity @e[predicate=sys:entity/ally,dx=0,dy=200,dz=0,limit=1] run function entity:slime/attack2/clear
execute if score @s pc.duration matches 20.. run function entity:slime/attack2/clear

# fx
particle dust{color:[0.573, 0.871, 0.525],scale:1.5f} ~ ~ ~ 0.2 0.2 0.2 0 5 force