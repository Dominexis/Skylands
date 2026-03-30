
# effect
scoreboard players set #value pc.main 2
execute as @n[predicate=pc:object/ally_player,type=!player,tag=pc.user,distance=..100] at @s run function pc:passive/effect/apply {effect:strength}

execute positioned ~-1.5 ~-100 ~-1.5 run tag @e[predicate=pc:object/mob,type=!player,tag=!pc.ally.teen_repair.used,dx=2,dy=200,dz=2,limit=1] add pc.ally.teen_repair.used