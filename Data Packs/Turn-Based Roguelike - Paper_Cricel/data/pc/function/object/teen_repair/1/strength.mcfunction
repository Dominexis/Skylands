
# effect
scoreboard players set #value pc.main 2
execute as @n[type=!minecraft:player,distance=..100,tag=pc.user,predicate=pc:object/ally_player] at @s run function pc:passive/effect/apply {effect:"strength"}

execute positioned ~-1.5 ~-100 ~-1.5 run tag @e[type=!minecraft:player,dx=2,dy=200,dz=2,tag=!pc.ally.teen_repair.used,limit=1,predicate=pc:object/mob] add pc.ally.teen_repair.used