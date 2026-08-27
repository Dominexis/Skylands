
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function pc:sys/grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/entity/dmg/atker

function pc:sys/grid/range/clear

# fx
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 0 force
particle minecraft:squid_ink ~ ~1 ~ 0 0 0 0.25 20 force