
data merge storage pc:temp {transformation:{scale: [1.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}
execute store result storage pc:temp transformation.scale[1] float 0.1 run random value 5..100
execute store result storage pc:temp transformation.translation[2] float 0.01 run random value -300..-200

rotate @s ~15 ~
data modify entity @s transformation.scale set from storage pc:temp transformation.scale
data modify entity @s transformation.translation set from storage pc:temp transformation.translation
data merge entity @s {teleport_duration:2,start_interpolation:0,interpolation_duration:15}

execute on passengers run rotate @s ~15 ~
execute on passengers run data modify entity @s transformation.scale set from storage pc:temp transformation.scale
execute on passengers run data modify entity @s transformation.translation set from storage pc:temp transformation.translation
execute on passengers run data merge entity @s {teleport_duration:2,start_interpolation:0,interpolation_duration:15}

tag @s remove pc.summon