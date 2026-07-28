
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function sys:entity/dmg/atker

function sys:grid/range/clear

# fx
particle flash{color:[0.945, 0.651, 0.965, 0.1]} ~ ~-2 ~ 0 0 0 0 0 force