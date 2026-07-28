
tag @e[tag=pc.grid.in_range,type=marker] remove pc.grid.in_range
data modify storage pc:temp range set value {type:'5x5',mode:'in_range'}
function sys:grid/range/use
execute as @e[tag=pc.grid.in_range,type=marker,distance=..11.32] at @s run function effect:netting/2