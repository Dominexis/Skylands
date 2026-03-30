
# effect
execute as @e[type=marker,tag=pc.intent.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:object/ender_eye/debuff1/3

# fx
playsound minecraft:block.end_portal.spawn master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2