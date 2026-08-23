
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function pc:sys/grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/entity/dmg/atker

data modify storage pc:temp effect set value {id:"weakness",value:1}
execute as @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/effect/apply

function pc:sys/grid/range/clear

# fx
particle minecraft:sweep_attack ~ ~1 ~ 1 1 1 0 5 force
particle minecraft:sneeze ~ ~1 ~ 0 0 0 0.1 10 force