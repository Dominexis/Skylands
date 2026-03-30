# exe : grid marker

# effect
execute at @s positioned ~-1.5 ~-100 ~-1.5 run tag @n[type=minecraft:item_display,dx=2,dy=200,dz=2,tag=pc.select] add pc.temp
function pc:sys/grid/state/reset_avail

# Color
tag @s remove pc.grid.now
data remove entity @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.temp,limit=1] item
execute if data entity @s {data:{select:{avail:1b}}} run data modify entity @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.temp,limit=1] item set value {id:"minecraft:gray_stained_glass"}
execute if data entity @s {data:{select:{avail:1b,in_range:1b}}} run data modify entity @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.temp,limit=1] item set value {id:"minecraft:light_gray_stained_glass"}

execute if data entity @s {data:{select:{avail:1b,in_range:1b,look:1b},display:"basic"}} run function pc:sys/grid/state/color/select

execute if data entity @s {data:{select:{avail:1b,look:1b},display:"repair"}} run tag @s add pc.grid.now
execute if data entity @s {data:{select:{avail:1b},display:"repair"}} run data modify entity @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.temp,limit=1] item set value {id:"minecraft:light_blue_stained_glass"}

execute if data entity @s {data:{select:{avail:1b},display:"intent"}} run function pc:sys/grid/state/color/intent

tag @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.temp,limit=1] remove pc.temp