
tag @s add pc.sys.passive_showed

# check item
data modify storage pc:temp info.effect set from entity @s Item.components.minecraft:custom_data.pc.tip
execute as @a[predicate=sl:player,tag=pc.temp,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s if data storage pc:temp info.effect run function pc:sys/item/show_feature/has_info
execute as @a[predicate=sl:player,tag=pc.temp,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s unless data storage pc:temp info.effect run function pc:sys/item/show_feature/no_info