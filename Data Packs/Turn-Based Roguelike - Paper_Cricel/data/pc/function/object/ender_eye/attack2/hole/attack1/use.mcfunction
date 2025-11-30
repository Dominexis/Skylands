
# effect
execute as @e[type=marker,tag=pc.intent.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:object/ender_eye/attack2/hole/attack1/2
function pc:sys/object/damage/death

# fx
execute rotated ~-90 0 run function pc:object/ender_eye/attack2/hole/attack1/fx
execute rotated ~ 0 run function pc:object/ender_eye/attack2/hole/attack1/fx
execute rotated ~90 0 run function pc:object/ender_eye/attack2/hole/attack1/fx
execute rotated ~180 0 run function pc:object/ender_eye/attack2/hole/attack1/fx
playsound entity.wither.shoot master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1