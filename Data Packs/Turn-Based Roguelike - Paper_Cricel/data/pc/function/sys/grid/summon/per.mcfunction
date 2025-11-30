
# effect
data modify entity @s data set from storage pc:temp grid[0][0]

tag @s add pc.grid
$tp @s ~$(offset_y) ~ ~$(offset_x)
execute if data entity @s data.lair run tag @s add pc.grid.lair
execute if data entity @s {data:{type:"  "}} run return run kill @s
execute if data entity @s {data:{offset_x:0,offset_y:0}} at @s run function pc:sys/grid/summon/center

# Highlight
#tellraw @a ["My Type :",{nbt:"data.type",entity:"@s"},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]
execute if data entity @s {data:{type:"spac"}} at @s positioned ~ ~-0.5 ~ run function pc:sys/grid/summon/highlight