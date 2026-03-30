
# effect
function pc:sys/grid/select/space1x1
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid] if data entity @s data.effect.rail_area at @s run function pc:sys/grid/select/use {mode:"in_range",type:"space",range:""}