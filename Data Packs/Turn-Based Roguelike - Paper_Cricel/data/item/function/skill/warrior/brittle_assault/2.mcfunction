
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'enemy'}
function sys:grid/range/use

scoreboard players add #damage pc.main 2
function sys:entity/dmg/atker

function sys:grid/range/clear

# fx
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 0 force
particle minecraft:item{item:"netherite_block"} ~ ~1 ~ 0.2 0.6 0.2 0.2 15 force