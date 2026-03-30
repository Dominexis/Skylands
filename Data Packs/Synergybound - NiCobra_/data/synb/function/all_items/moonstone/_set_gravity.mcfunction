attribute @s minecraft:gravity modifier add synb.m:item.moonstone.passive -0.046 add_value
attribute @s minecraft:safe_fall_distance modifier add synb.m:item.moonstone.passive 3 add_value

execute if score @s synb.IEItemCount.moonstone matches 2.. run attribute @s minecraft:gravity modifier remove synb.m:item.moonstone.passive
execute if score @s synb.IEItemCount.moonstone matches 2.. run attribute @s minecraft:gravity modifier add synb.m:item.moonstone.passive -0.063 add_value
execute if score @s synb.IEItemCount.moonstone matches 2.. run attribute @s minecraft:safe_fall_distance modifier remove synb.m:item.moonstone.passive
execute if score @s synb.IEItemCount.moonstone matches 2.. run attribute @s minecraft:safe_fall_distance modifier add synb.m:item.moonstone.passive 10 add_value