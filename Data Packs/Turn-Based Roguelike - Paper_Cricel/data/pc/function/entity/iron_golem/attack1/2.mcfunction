
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function pc:sys/grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/entity/dmg/atker

function pc:sys/grid/range/clear

# fx
particle minecraft:flash{color:[1,1,1,0.25]} ~ ~ ~ 0 0 0 0 0 force
particle minecraft:dust_pillar{block_state:"green_concrete"} ~ ~ ~ 0.6 0 0.6 0 10 force