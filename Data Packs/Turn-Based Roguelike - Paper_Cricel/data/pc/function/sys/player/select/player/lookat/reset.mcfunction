
# effect
tag @s remove pc.select.selected

# fx
kill @n[type=minecraft:text_display,distance=..100,tag=pc.grid.effect_info,predicate=pc:in/plot]
execute as @n[type=minecraft:marker,distance=..100,tag=pc.grid] at @s run function pc:sys/grid/state/color
data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,1.0f,2.0f],translation:[0.0f,-1.25f,0.0f]},start_interpolation:0,interpolation_duration:5}