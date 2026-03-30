
# effect
execute if data storage pc:temp damage.display run return fail

# Durability
data modify storage pc:temp repair set value {value:0,item:'pestilent_rampage'}
function pc:sys/item/durability/get_value
execute if score #db pc.main matches ..0 run return fail

data modify storage pc:temp repair set value {value:-1,item:'pestilent_rampage'}
function pc:sys/item/durability/use

# Poison
execute as @n[predicate=pc:object/mob,type=!player,tag=pc.sys.atker,distance=..100] at @s run function pc:item/skill/pestilent_rampage/on_hurt/2