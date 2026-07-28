
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function sys:entity/dmg/atker

function sys:grid/range/clear

# fx
particle minecraft:instant_effect{color:[0.541, 0.118, 0.725],power:1} ~ ~0.25 ~ 1 0 1 1 10 force