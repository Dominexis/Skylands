
function pc:sys/grid/select/ally
execute unless entity @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] run return fail

scoreboard players set #value pc.main 2
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/victim] at @s run function pc:passive/effect/apply {effect:"poison"}

function pc:sys/grid/select/clear

# fx
particle minecraft:entity_effect{color:[0.427,0.859,0.361,1.0]} ~ ~1 ~ 0.3 0.4 0.3 1 20 force
playsound minecraft:entity.squid.squirt master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.75 2