
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function sys:entity/dmg/atker

function sys:grid/range/clear

# fx
scoreboard players set #range pc.main 0
execute positioned ~ ~0.5 ~ facing entity @e[tag=pc.atker,type=end_crystal,limit=1] feet run function entity:ender_dragon/crystal/attack1/beam
particle minecraft:item{item:{id:"minecraft:purple_glazed_terracotta"}} ~ ~0.25 ~ 0 0 0 0.15 30 force
particle entity_effect{color:[0.773, 0.435, 0.980, 1.000]} ~ ~0.25 ~ 0.6 0.3 0.6 0.1 20 force