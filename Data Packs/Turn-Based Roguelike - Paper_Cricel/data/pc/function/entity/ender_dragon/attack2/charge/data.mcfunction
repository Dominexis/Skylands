
tag @s add pc.entity.ender_dragon.attack2.charge

execute store result storage pc:temp pos.x float 0.1 run random value -80..80
execute store result storage pc:temp pos.y float 0.1 run random value 0..30
execute store result storage pc:temp pos.z float 0.1 run random value -80..80

function pc:sys/utils/macro/tp with storage pc:temp pos

execute at @s positioned ~ ~-0.75 ~ facing entity @e[tag=pc.entity.ender_dragon,type=minecraft:bee,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] feet run rotate @s ~ ~

data remove storage pc:temp pos