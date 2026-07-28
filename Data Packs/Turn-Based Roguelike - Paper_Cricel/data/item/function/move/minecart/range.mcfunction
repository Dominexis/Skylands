
data modify storage pc:temp range set value {type:"1x1",mode:"in_range",avail:{hole:0b}}
function sys:grid/range/use

execute as @e[tag=pc.grid,type=minecraft:marker,nbt={data:{effects:[{id:"rail_area"}]}}] at @s if function sys:grid/is_available run tag @s add pc.grid.in_range