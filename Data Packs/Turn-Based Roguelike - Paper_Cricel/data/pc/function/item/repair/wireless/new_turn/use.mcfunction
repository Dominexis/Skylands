
# effect
execute if entity @n[type=!minecraft:player,distance=..100,tag=pc.object.repair,predicate=pc:object/ally] run return fail

data modify storage pc:temp repair set value {value:1,category:"repair"}
function pc:sys/item/durability/use