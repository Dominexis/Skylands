
execute as @e[tag=pc.intent.now,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_eye/debuff1/2
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:block.respawn_anchor.charge master @a ~ ~1024 ~ 0 0.8 0.5
playsound minecraft:entity.player.breath master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:entity.guardian.death master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:block.end_portal.spawn master @a ~ ~1024 ~ 0 1.5 0.25