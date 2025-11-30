
# effect
data modify entity @s item.components."minecraft:item_model" set from storage pc:game combat.start_button.icon
data merge entity @s {transformation:{left_rotation:[0.0f,360.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.8f,0.8f,0.1f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:10}