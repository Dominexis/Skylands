
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

scoreboard players operation #skill.repair_jade pc.main = #db pc.main
scoreboard players operation #skill.repair_jade pc.main += #dbcost pc.main

data modify storage pc:temp effect set value {id:'strength',temp:1b}
execute store result storage pc:temp effect.value int 1 run scoreboard players get #skill.repair_jade pc.main
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:effect/apply

function sys:grid/range/clear