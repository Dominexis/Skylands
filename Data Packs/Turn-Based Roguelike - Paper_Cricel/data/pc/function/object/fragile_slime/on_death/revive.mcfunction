
# fx
data modify entity @s Size set value 0
execute on passengers if entity @s[type=item_display,tag=pc.object.same_rot] run data merge entity @s {transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1f, 1f, 1f], translation: [0.0f, 0.0f, 0.0f]}}