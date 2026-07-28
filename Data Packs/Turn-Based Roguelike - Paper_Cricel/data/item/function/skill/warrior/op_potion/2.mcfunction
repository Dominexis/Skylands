
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute as @e[predicate=sys:entity/victim,limit=1] at @s run function item:skill/warrior/op_potion/2b

function sys:grid/range/clear