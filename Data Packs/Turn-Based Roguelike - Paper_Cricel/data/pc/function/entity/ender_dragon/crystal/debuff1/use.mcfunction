
execute as @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/crystal/debuff1/2
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.ender_eye.death master @a ~ ~1024 ~ 0 0.8 1
playsound minecraft:entity.zombie_villager.converted master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:entity.allay.hurt master @a ~ ~1024 ~ 0 0 0.5