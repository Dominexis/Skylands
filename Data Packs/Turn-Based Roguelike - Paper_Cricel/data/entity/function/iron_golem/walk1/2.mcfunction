
data modify storage pc:temp range set value {type:'1x1or0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function sys:entity/dmg/atker

function sys:grid/range/clear