
# effect
function pc:sys/grid/select/sys/first
execute as @e[type=marker,predicate=pc:grid/unoccupy,distance=..100] if predicate pc:in/3x3 at @s run function pc:sys/grid/select/sys/use
function pc:sys/grid/select/sys/last