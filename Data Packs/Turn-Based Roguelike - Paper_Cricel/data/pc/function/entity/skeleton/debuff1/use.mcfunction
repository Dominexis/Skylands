
execute as @e[tag=pc.intent.now,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/skeleton/debuff1/2
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.skeleton.converted_to_stray master @a ~ ~1024 ~ 0 0 1
playsound minecraft:item.trident.return master @a ~ ~1024 ~ 0 0.75 1