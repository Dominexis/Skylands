
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'enemy'}
function sys:grid/range/use

scoreboard players set #damage pc.main 4
function sys:entity/dmg/atker

data modify storage pc:temp effect set value {id:'vulnerable',value:3}
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:effect/apply

# fx
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 0 force
particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 0.2 0.2 0.2 0 30 force