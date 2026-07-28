
# if (lookat == true) :
execute if score #is_looking pc.main matches 1 run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.2f,1.0f,2.2f],translation:[0.0f,-1.0f,0.0f]},start_interpolation:0,interpolation_duration:2}

# if (repairable == true && entity.repair in grid) :
execute if score #is_repairable pc.main matches 1 if function sys:grid/is_entity_repair run return run function sys:grid/update/repair

# elif (in range) :
execute if score #is_in_range pc.main matches 1 run return run function sys:grid/update/in_range

# else :
data modify entity @s item set value {id:"minecraft:gray_stained_glass"}