
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function sys:entity/dmg/atker

data modify storage pc:temp effect set value {id:"weakness",value:1}
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:effect/apply

function sys:grid/range/clear

# fx
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 0 force
particle minecraft:sneeze ~ ~1 ~ 0 0 0 0.1 10 force