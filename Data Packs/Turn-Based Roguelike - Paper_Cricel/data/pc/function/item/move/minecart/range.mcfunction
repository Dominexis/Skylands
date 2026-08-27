
data modify storage pc:temp range set value {type:"1x1",mode:"in_range",avail:{hole:0b}}
function pc:sys/grid/range/use

execute as @e[tag=pc.grid,type=minecraft:marker,nbt={data:{effects:[{id:"rail_area"}]}},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s if function pc:sys/grid/is_available run tag @s add pc.grid.in_range