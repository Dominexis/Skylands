
execute as @e[tag=pc.intent.now,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/iron_golem/attack1/2
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.iron_golem.attack master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.player.breath master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:item.mace.smash_air master @a ~ ~1024 ~ 0 0 1