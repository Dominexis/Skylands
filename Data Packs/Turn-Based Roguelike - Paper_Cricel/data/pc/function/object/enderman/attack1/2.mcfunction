
# effect
function pc:sys/grid/select/ally

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/object/damage/atker

scoreboard players set #value pc.main 2
execute as @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:passive/effect/apply {effect:weakness}

function pc:sys/grid/select/clear

# fx
particle flash ~ ~ ~
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~1.5 ~ ~0.0 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~1.41 ~ ~0.513 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~1.149 ~ ~0.964 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~0.75 ~ ~1.299 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~0.26 ~ ~1.477 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~-0.26 ~ ~1.477 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~-0.75 ~ ~1.299 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~-1.149 ~ ~0.964 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~-1.41 ~ ~0.513 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~-1.5 ~ ~0.0 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~-1.41 ~ ~-0.513 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~-1.149 ~ ~-0.964 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~-0.75 ~ ~-1.299 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~-0.26 ~ ~-1.477 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~0.26 ~ ~-1.477 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~0.75 ~ ~-1.299 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~1.149 ~ ~-0.964 0 0 0 1 0 normal
particle entity_effect{color:[0.616,0.180,1.000,1.00]} ~1.41 ~ ~-0.513 0 0 0 1 0 normal