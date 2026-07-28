
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'enemy'}
function sys:grid/range/use

scoreboard players set #damage pc.main 6
data modify storage pc:temp damage set value {mode:"heal"}
function sys:entity/dmg/atker

data modify storage pc:temp shield set value {value:12,buffer:1b}
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:entity/shield/use

function sys:grid/range/clear

# fx
particle minecraft:heart ~ ~1 ~ 0.3 0.6 0.3 0 10 force
particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.5 0.6 0.5 0 10 force