
# effect
function pc:sys/grid/select/ally

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/object/damage/atker

execute if data entity @s {data:{id:"bigger"}} run scoreboard players set #value pc.main 5
execute if data entity @s {data:{id:"smaller"}} run scoreboard players set #value pc.main 3
execute as @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:passive/effect/apply {effect:"vulnerable"}

function pc:sys/grid/select/clear

# fx
particle entity_effect{color:[0.722,0.580,1.000,1.00]} ~ ~1 ~ 0.2 0.4 0.2 1 10 force