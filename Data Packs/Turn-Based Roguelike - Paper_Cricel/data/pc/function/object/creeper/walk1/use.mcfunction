
# effect
execute as @n[type=marker,tag=pc.intent.now,distance=..100] at @s run function pc:object/creeper/walk1/2
function pc:sys/object/walk/object

# fx
playsound minecraft:entity.goat.long_jump master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1