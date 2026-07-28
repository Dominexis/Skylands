
execute store result score #count pc.main if entity @e[predicate=sys:entity/repair,nbt={data:{repair:{}}}]
execute unless score #count pc.main matches 1.. run return fail

data modify storage pc:temp effect set value {id:'strength',temp:1b}
execute store result storage pc:temp effect.value int 2 run scoreboard players get #count pc.main
function sys:effect/apply