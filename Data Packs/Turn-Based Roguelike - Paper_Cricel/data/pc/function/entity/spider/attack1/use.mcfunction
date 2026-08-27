
execute as @e[tag=pc.intent.now,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/spider/attack1/2
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.evoker_fangs.attack master @a ~ ~1024 ~ 0 2 1