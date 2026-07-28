
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function sys:entity/dmg/atker

function sys:grid/range/clear

# fx
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 0 force
particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 0.1 0.1 0.1 0 10 force