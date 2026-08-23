
tag @s add pc.entity.ender_dragon.debuff2.charge

execute store result storage pc:temp pos.x float 0.1 run random value -150..150
execute store result storage pc:temp pos.y float 0.1 run random value -60..-20
execute store result storage pc:temp pos.z float 0.1 run random value -150..150

function pc:sys/utils/macro/tp with storage pc:temp pos

data remove storage pc:temp pos