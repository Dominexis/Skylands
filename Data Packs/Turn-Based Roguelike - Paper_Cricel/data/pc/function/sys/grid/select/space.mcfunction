
# effect
function pc:sys/grid/select/sys/first
execute as @n[type=minecraft:marker,distance=..100,predicate=pc:grid/unoccupy] if predicate pc:in/0 at @s run function pc:sys/grid/select/sys/use
function pc:sys/grid/select/sys/last