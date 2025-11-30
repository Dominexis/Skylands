
# effect
function pc:sys/grid/select/sys/first

data modify storage pc:temp grid.type set value all
execute as @e[type=marker,tag=pc.grid,distance=..100] at @s run function pc:sys/grid/select/sys/use

function pc:sys/grid/select/sys/last