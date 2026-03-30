
tp @s ^ ^ ^1
execute unless block ^ ^ ^1 #pc:transparent run kill @s

# Hit
execute positioned ~-1.5 ~-100 ~-1.5 unless entity @e[type=!minecraft:player,dx=2,dy=200,dz=2,limit=1,predicate=pc:object/ally] run return fail
execute positioned ~-1.5 ~-100 ~-1.5 as @e[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.intent.now,limit=1] at @s run function pc:object/magma_blaze/attack1/3
kill @s