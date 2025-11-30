
# effect
function pc:sys/grid/select/sys/first

data modify storage pc:temp grid.type set value mob
execute positioned ~4 ~ ~ as @n[type=marker,tag=pc.grid,distance=..100] if predicate pc:in/0 at @s run function pc:sys/grid/select/sys/use
execute positioned ~-4 ~ ~ as @n[type=marker,tag=pc.grid,distance=..100] if predicate pc:in/0 at @s run function pc:sys/grid/select/sys/use
execute positioned ~ ~ ~4 as @n[type=marker,tag=pc.grid,distance=..100] if predicate pc:in/0 at @s run function pc:sys/grid/select/sys/use
execute positioned ~ ~ ~-4 as @n[type=marker,tag=pc.grid,distance=..100] if predicate pc:in/0 at @s run function pc:sys/grid/select/sys/use

function pc:sys/grid/select/sys/last