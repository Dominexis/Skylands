
# effect
function pc:sys/grid/select/sys/first

data modify storage pc:temp grid.type set value all
execute positioned ~4 ~ ~ as @n[type=minecraft:marker,distance=..100,tag=pc.grid] if predicate pc:in/0 at @s run function pc:sys/grid/select/sys/use
execute positioned ~-4 ~ ~ as @n[type=minecraft:marker,distance=..100,tag=pc.grid] if predicate pc:in/0 at @s run function pc:sys/grid/select/sys/use
execute positioned ~ ~ ~4 as @n[type=minecraft:marker,distance=..100,tag=pc.grid] if predicate pc:in/0 at @s run function pc:sys/grid/select/sys/use
execute positioned ~ ~ ~-4 as @n[type=minecraft:marker,distance=..100,tag=pc.grid] if predicate pc:in/0 at @s run function pc:sys/grid/select/sys/use

function pc:sys/grid/select/sys/last