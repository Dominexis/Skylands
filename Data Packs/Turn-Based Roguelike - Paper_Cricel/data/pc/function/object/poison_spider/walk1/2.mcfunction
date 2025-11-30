
function pc:sys/grid/select/ally
execute unless entity @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run return fail

scoreboard players set #value pc.main 2
execute as @e[predicate=pc:object/victim,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:passive/effect/apply {effect:poison}

function pc:sys/grid/select/clear

# fx
particle entity_effect{color:[0.427,0.859,0.361,1.00]} ~ ~1 ~ 0.3 0.4 0.3 1 20 force
playsound minecraft:entity.squid.squirt master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.75 2