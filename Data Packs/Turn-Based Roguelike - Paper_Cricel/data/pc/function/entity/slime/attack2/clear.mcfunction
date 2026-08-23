
execute positioned ~-1 ~ ~-1 as @e[tag=pc.intent.now,type=marker,dx=2,dy=200,dz=2,limit=1] at @s run function pc:entity/slime/attack2/2
function pc:sys/combat/turn/end_act

kill @s