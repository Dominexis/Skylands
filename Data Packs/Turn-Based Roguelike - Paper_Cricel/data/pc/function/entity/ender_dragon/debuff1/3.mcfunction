
tag @e[tag=pc.grid.in_range,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.grid.in_range

data modify storage pc:temp range set value {type:'5x5',mode:'in_range'}
execute positioned ~-1.5 ~-100 ~-1.5 at @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/use

execute as @e[tag=pc.grid.in_range,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/debuff1/3b

function pc:sys/combat/turn/end_act