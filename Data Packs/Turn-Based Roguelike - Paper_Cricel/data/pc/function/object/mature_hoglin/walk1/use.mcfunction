
# effect
execute as @n[type=minecraft:marker,distance=..100,tag=pc.intent.now] at @s run function pc:object/mature_hoglin/walk1/2
function pc:sys/object/walk/object

# fx
playsound minecraft:entity.hoglin.step master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1