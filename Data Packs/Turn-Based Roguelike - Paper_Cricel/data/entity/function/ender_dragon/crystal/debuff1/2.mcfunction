
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute as @e[predicate=sys:entity/victim,limit=1] at @s run function entity:ender_dragon/crystal/debuff1/2b

function sys:grid/range/clear

# fx
scoreboard players set #range pc.main 0
execute positioned ~ ~0.5 ~ facing entity @e[tag=pc.atker,type=end_crystal,limit=1] feet run function entity:ender_dragon/crystal/debuff1/beam
particle entity_effect{color:[0.353, 0.271, 0.404, 1.000]} ~ ~0.25 ~ 0.6 0.3 0.6 0.1 20 force