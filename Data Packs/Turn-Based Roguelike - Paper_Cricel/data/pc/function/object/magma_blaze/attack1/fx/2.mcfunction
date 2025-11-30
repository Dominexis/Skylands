
tp @s ^ ^ ^1
execute unless block ^ ^ ^1 #pc:transparent run kill @s

# Hit
execute positioned ~-1.5 ~-100 ~-1.5 unless entity @e[predicate=pc:object/ally,type=!player,dx=2,dy=200,dz=2,limit=1] run return fail
execute positioned ~-1.5 ~-100 ~-1.5 as @e[type=marker,tag=pc.intent.now,dx=2,dy=200,dz=2,limit=1] at @s run function pc:object/magma_blaze/attack1/3
kill @s