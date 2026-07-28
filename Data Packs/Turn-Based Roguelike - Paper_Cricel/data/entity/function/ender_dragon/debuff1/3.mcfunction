
tag @e[tag=pc.grid.in_range,type=marker] remove pc.grid.in_range

data modify storage pc:temp range set value {type:'5x5',mode:'in_range'}
execute positioned ~-1.5 ~-100 ~-1.5 at @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] run function sys:grid/range/use

execute as @e[tag=pc.grid.in_range,type=marker] at @s run function entity:ender_dragon/debuff1/3b

function sys:combat/turn/end_act