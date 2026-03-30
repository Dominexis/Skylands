
# effect
function pc:sys/object/walk/object
execute as @e[type=marker,tag=pc.intent.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] unless data entity @s {data:{is_walk:true}} at @s run function pc:object/magma_blaze/walk1/3

# fx
