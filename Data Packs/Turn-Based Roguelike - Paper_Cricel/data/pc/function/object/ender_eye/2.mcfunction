
# effect
execute on passengers if entity @s[tag=pc.mob.ender_eye.left_wing] run data merge entity @s {transformation: {left_rotation: [0.7071068f, 0.7071068f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.99999994f, 0.99999994f, 0.5f], translation: [0.55f, -0.45f, 0.004928496f]},start_interpolation:0,interpolation_duration:10}
execute on passengers if entity @s[tag=pc.mob.ender_eye.right_wing] run data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.7071068f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.99999994f, 0.99999994f, 0.5f], translation: [-0.55f, -0.45f, 0.004928496f]},start_interpolation:0,interpolation_duration:10}

# fx
