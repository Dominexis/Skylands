
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

data modify storage pc:temp effect set value {id:'vulnerable',value:1}
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:effect/apply

function sys:grid/range/clear

# fx
particle dust{color:[0.875, 0.251, 0.153],scale:1.5f} ~ ~0.25 ~ 0.4 0.1 0.4 0 15 force
particle trial_spawner_detection ~ ~0.25 ~ 0.4 0.0 0.4 0 10 force