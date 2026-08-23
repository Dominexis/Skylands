
execute as @e[tag=pc.intent.now,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/iron_golem/attack2/3
function pc:sys/combat/turn/end_act

# fx
playsound pc:sys/pipe master @a ~ ~1024 ~ 0 1 0.1