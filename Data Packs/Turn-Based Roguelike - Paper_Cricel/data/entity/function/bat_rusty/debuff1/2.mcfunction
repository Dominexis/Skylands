
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

data modify storage pc:temp effect set value {id:'rusty',value:2}
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:effect/apply

function sys:grid/range/clear