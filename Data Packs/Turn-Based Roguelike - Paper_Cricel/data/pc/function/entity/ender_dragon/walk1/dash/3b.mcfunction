
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function pc:sys/grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/entity/dmg/atker
execute as @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:sys/entity/repel/use

function pc:sys/grid/range/clear
kill @s

data modify storage pc:temp effect set value {id:'dragonbreath_area',value:2,buffer:1b}
execute positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] at @s run function pc:sys/effect/apply