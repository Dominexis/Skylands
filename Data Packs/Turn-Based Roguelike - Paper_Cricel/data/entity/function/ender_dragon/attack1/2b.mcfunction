
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function sys:entity/dmg/atker

execute as @e[predicate=sys:entity/victim,limit=1] positioned as @s run function sys:entity/repel/use

function sys:grid/range/clear