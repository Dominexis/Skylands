
execute as @e[tag=pc.intent.now,type=minecraft:marker,limit=9,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/blaze_magma/attack2/2
kill @s

function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.blaze.death master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:block.lava.pop master @a ~ ~1024 ~ 0 0 1