
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'enemy'}
function sys:grid/range/use

scoreboard players set #damage pc.main 6
data modify storage pc:temp damage set value {mode:"heal"}
function sys:entity/dmg/atker

data modify storage pc:temp effect set value {id:"critical_hit",value:1}
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:effect/apply

function sys:grid/range/clear

# fx
function entity:piglin_heal/buff2/fx/use
particle witch ~ ~0.25 ~ 0.5 0.1 0.5 10 30 force
particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.5 0.6 0.5 0 10 force