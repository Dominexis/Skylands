
data modify storage pc:temp range set value {type:"0",target:"ally",mode:"victim"}
function sys:grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function sys:entity/dmg/atker

function sys:grid/range/clear

# fx
particle minecraft:sonic_boom ~ ~1 ~