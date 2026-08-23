
execute as @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/bat/buff1/2
function pc:sys/combat/turn/end_act

# fx
playsound pc:sys/buff master @a ~ ~1024 ~ 0 1.5 0.25
playsound minecraft:entity.goat.screaming.hurt master @a ~ ~1024 ~ 0 1.5 1
function pc:sys/fx/buff/use
particle minecraft:dust{color:[0.612, 0.184, 0.710],scale:2} ~ ~ ~ 0.4 0.6 0.4 0 20 force