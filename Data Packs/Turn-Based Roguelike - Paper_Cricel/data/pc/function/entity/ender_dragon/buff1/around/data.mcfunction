
tag @s add pc.fx
tag @s add pc.entity.ender_dragon.buff1.around

execute store result entity @s Rotation[0] float 0.1 run random value 0..3600
execute store result entity @s Rotation[1] float 0.1 run random value -300..300