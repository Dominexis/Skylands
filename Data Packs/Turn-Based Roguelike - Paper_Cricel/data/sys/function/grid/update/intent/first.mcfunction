
scoreboard players set #is_intent pc.main 0
execute at @s positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.intent.now,type=marker,dx=2,dy=200,dz=2,limit=1] at @s run function sys:grid/update/intent/2