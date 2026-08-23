
execute as @e[tag=pc.intent.attack,tag=pc.intent.now,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if function pc:sys/grid/range/type/any-cross at @s run function pc:entity/enderman/attack1/3
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.enderman.scream master @a ~ ~1024 ~ 0 1 0.75
playsound minecraft:entity.firework_rocket.blast master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.firework_rocket.blast master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.player.hurt_on_fire master @a ~ ~1024 ~ 0 0 0.5