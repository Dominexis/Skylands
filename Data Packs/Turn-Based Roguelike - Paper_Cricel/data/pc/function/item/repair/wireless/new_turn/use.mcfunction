
# effect
execute if entity @n[predicate=pc:object/ally,type=!player,tag=pc.object.repair,distance=..100] run return fail

data modify storage pc:temp repair set value {value:1,category:'repair'}
function pc:sys/item/durability/use