
execute as @e[tag=pc.intent.now,tag=pc.intent.debuff,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/bat_rusty/debuff1/2
execute as @e[tag=pc.intent.now,tag=pc.intent.buff,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/bat_rusty/debuff1/3
function pc:sys/entity/schedule/use {func:"function pc:sys/combat/turn/end_act",delay:10}

# fx
execute positioned ~ ~-0.9 ~ run function pc:entity/bat_rusty/debuff1/fx/use