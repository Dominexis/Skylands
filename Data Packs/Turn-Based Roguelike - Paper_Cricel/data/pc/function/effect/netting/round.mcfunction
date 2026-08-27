
tag @e[tag=pc.grid.in_range,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.grid.in_range
data modify storage pc:temp range set value {type:'5x5',mode:'in_range'}
function pc:sys/grid/range/use
execute as @e[tag=pc.grid.in_range,type=marker,distance=..11.32] at @s run function pc:effect/netting/2