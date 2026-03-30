
# effect
execute at @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] run function pc:object/end_crystal/debuff1/2

# fx
playsound pc:teleport master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.75