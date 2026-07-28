
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function sys:entity/dmg/atker
execute as @e[predicate=sys:entity/victim,limit=1] run function sys:entity/repel/use

function sys:grid/range/clear
kill @s

data modify storage pc:temp effect set value {id:'dragonbreath_area',value:2,buffer:1b}
execute positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] at @s run function sys:effect/apply