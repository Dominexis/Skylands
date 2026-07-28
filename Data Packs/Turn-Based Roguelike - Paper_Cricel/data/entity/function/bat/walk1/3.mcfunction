
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function sys:entity/dmg/atker

function sys:grid/range/clear

# fx
particle minecraft:firework ~ ~0.5 ~ 0.3 0.3 0.3 0.1 10 force
particle minecraft:block{block_state:"purple_concrete"} ~ ~0.5 ~ 0.3 0.3 0.3 0 20 force