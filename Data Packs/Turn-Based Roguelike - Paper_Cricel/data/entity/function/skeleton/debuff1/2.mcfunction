
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

data modify storage pc:temp effect set value {id:'weakness',value:1}
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:effect/apply

function sys:grid/range/clear

# fx
particle dust{color:[0.510, 0.855, 0.424],scale:1.5f} ~ ~0.25 ~ 0.4 0.1 0.4 0 15 force
particle minecraft:totem_of_undying ~ ~0.25 ~ 0 0 0 0.5 30 force