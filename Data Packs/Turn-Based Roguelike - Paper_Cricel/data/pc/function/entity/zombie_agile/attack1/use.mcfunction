
execute as @e[tag=pc.intent.now,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/zombie_agile/attack1/2
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:entity.player.attack.sweep master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:item.trident.riptide_3 master @a ~ ~1024 ~ 0 2 0.5