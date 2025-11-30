
# effect
function pc:sys/object/walk/object
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent.now] unless data entity @s {data:{is_walk:1b}} at @s run function pc:object/magma_blaze/walk1/3

# fx
