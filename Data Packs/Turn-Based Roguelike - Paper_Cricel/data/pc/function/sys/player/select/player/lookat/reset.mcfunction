
# effect
tag @s remove pc.select.selected

# fx
kill @n[type=text_display,tag=pc.grid.effect_info,predicate=pc:in/plot,distance=..100]
execute as @n[type=marker,tag=pc.grid,distance=..100] at @s run function pc:sys/grid/state/color
data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 1.0f, 2.0f], translation: [0.0f, -1.25f, 0.0f]},start_interpolation:0,interpolation_duration:5}