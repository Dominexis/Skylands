
# effect
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent.now] at @s run function pc:object/ender_eye/attack2/hole/attack1/2
function pc:sys/object/damage/death

# fx
execute rotated ~-90 0 run function pc:object/ender_eye/attack2/hole/attack1/fx
execute rotated ~ 0 run function pc:object/ender_eye/attack2/hole/attack1/fx
execute rotated ~90 0 run function pc:object/ender_eye/attack2/hole/attack1/fx
execute rotated ~180 0 run function pc:object/ender_eye/attack2/hole/attack1/fx
playsound minecraft:entity.wither.shoot master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1