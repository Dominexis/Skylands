
# effect
data merge entity @s {Tags:[pc.fx.buff],alignment: "center", background: 0, billboard: "center", default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: '□', transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, -0.15f, 0.0f]},teleport_duration:3}

execute store result entity @s Rotation[0] float 1 run random value -180..180
execute store result entity @s Rotation[1] float 1 run random value -90..90