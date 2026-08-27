
data merge entity @s {Tags:["pc.fx","pc.entity.dragonbreath_area.dust"],item:{id:"minecraft:endermite_spawn_egg",count:1},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f]}}

execute store result storage pc:temp pos.x float 0.1 run random value -15..15
execute store result storage pc:temp pos.y float 0.1 run random value -10..10
execute store result storage pc:temp pos.z float 0.1 run random value -15..15

function pc:sys/utils/macro/tp with storage pc:temp pos

data remove storage pc:temp pos