
execute positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.intent.now,type=marker,dx=2,dy=200,dz=2,limit=1] at @s run function entity:skeleton_continu/attack1/2
kill @s

execute unless score #buffer pc.main matches 1 run function sys:combat/turn/end_act