
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute as @e[predicate=sys:entity/victim,limit=1] at @s positioned ~ ~1 ~ run function entity:ender_dragon/debuff2/2b