
execute as @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/crystal/attack1/2
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.ender_eye.death master @a ~ ~1024 ~ 0 0.8 1
playsound minecraft:entity.dolphin.death master @a ~ ~1024 ~ 0 0.8 0.25
playsound minecraft:entity.iron_golem.repair master @a ~ ~1024 ~ 0 1 0.25