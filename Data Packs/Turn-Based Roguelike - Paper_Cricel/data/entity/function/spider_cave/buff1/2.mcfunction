
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'enemy'}
function sys:grid/range/use

data modify storage pc:temp effect set value {id:'strength',value:2}
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:effect/apply

data modify storage pc:temp shield set value {value:12,buffer:1b}
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:entity/shield/use