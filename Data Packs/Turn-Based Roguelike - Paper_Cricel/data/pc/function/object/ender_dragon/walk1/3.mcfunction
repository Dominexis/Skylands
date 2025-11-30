
# effect
execute if score #is_diagonal pc.main matches 0 at @s run tp @s ^ ^ ^-4
execute if score #is_diagonal pc.main matches 1 at @s run tp @s ^ ^ ^-5.656
execute at @s positioned ~-1.5 ~-100 ~-1.5 unless entity @n[type=minecraft:marker,tag=pc.grid,nbt={data:{type:"spac"}},dx=2,dy=200,dz=2] positioned ~1.5 ~100 ~1.5 run return run function pc:object/ender_dragon/walk1/3

execute at @s run function pc:object/ender_dragon/walk1/clear