# exe : grid marker

# effect
execute at @s positioned ~-1.5 ~-100 ~-1.5 run tag @n[type=item_display,tag=pc.select,dx=2,dy=200,dz=2] add pc.temp
function pc:sys/grid/state/reset_avail

    # Color
tag @s remove pc.grid.now
data remove entity @e[type=item_display,tag=pc.temp,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] item
execute if data entity @s {data:{select:{avail:true}}} run data modify entity @e[type=item_display,tag=pc.temp,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] item set value {id:"minecraft:gray_stained_glass"}
execute if data entity @s {data:{select:{avail:true,in_range:true}}} run data modify entity @e[type=item_display,tag=pc.temp,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] item set value {id:"minecraft:light_gray_stained_glass"}

execute if data entity @s {data:{select:{avail:true,in_range:true,look:true},display:"basic"}} run function pc:sys/grid/state/color/select

execute if data entity @s {data:{select:{avail:true,look:true},display:"repair"}} run tag @s add pc.grid.now
execute if data entity @s {data:{select:{avail:true},display:"repair"}} run data modify entity @e[type=item_display,tag=pc.temp,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] item set value {id:"minecraft:light_blue_stained_glass"}

execute if data entity @s {data:{select:{avail:true},display:"intent"}} run function pc:sys/grid/state/color/intent

tag @e[type=item_display,tag=pc.temp,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.temp