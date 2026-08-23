
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function pc:sys/grid/range/use
execute unless entity @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run return fail

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/entity/dmg/atker

function pc:sys/grid/range/clear

# fx
particle minecraft:explosion ~ ~1 ~ 1000 0 1000 0.004 0 force