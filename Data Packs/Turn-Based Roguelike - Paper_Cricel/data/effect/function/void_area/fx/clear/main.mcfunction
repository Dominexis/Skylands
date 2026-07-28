
data merge entity @s {transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.01f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}, start_interpolation: 0, interpolation_duration: 10}
execute if score @s pc.duration matches 40.. run function sys:void