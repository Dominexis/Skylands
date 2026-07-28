
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use
execute unless entity @e[predicate=sys:entity/victim,limit=1] run return fail

execute store result score #damage pc.main run data get entity @s data.damage
function sys:entity/dmg/atker

function sys:grid/range/clear

# fx
particle minecraft:explosion ~ ~1 ~ 1000 0 1000 0.004 0 force