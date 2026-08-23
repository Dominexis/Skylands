
data merge entity @s {Tags:[pc.effect.void_area.digit], alignment: "center", billboard:"vertical", background: 0, brightness: {block: 15, sky: 0}, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, shadow_strength: 0.0f, text: {text:"\u0001",font:"pc:mob/ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f], translation: [-0.1f, -0.12f, 0.0f]}, view_range: 2.0f, teleport_duration:5}

data modify storage pc:temp temp set value {scale: [2.0f, 2.0f, 1.0f], translation: [-0.1f, -0.12f, 0.0f]}

execute store result score #scale pc.main run random value 20..80
execute store result storage pc:temp temp.scale[1] float 0.1 run scoreboard players get #scale pc.main
execute store result storage pc:temp temp.translation[1] float -0.006 run scoreboard players get #scale pc.main
data modify entity @s transformation.scale set from storage pc:temp temp.scale
data modify entity @s transformation.translation set from storage pc:temp temp.translation

execute store result score #x pc.main run random value -10..10
execute store result score #z pc.main run random value -10..10
execute store result storage pc:temp temp.x float 0.025 run scoreboard players operation #x pc.main *= #self pc.duration
execute store result storage pc:temp temp.y float 0.025 run random value -10..-5
execute store result storage pc:temp temp.z float 0.025 run scoreboard players operation #z pc.main *= #self pc.duration
function pc:sys/utils/macro/tp with storage pc:temp temp

data remove storage pc:temp temp