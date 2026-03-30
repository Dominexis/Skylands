
# effect
execute positioned ~-1.5 ~-100 ~-1.5 unless entity @n[type=!player,tag=pc.object.repair,dx=2,dy=200,dz=2] run return fail
execute positioned ~-1.5 ~-100 ~-1.5 positioned ~4 ~ ~ if entity @n[predicate=pc:object/ally_player,type=!player,dx=2,dy=200,dz=2] run return 1
execute positioned ~-1.5 ~-100 ~-1.5 positioned ~-4 ~ ~ if entity @n[predicate=pc:object/ally_player,type=!player,dx=2,dy=200,dz=2] run return 1
execute positioned ~-1.5 ~-100 ~-1.5 positioned ~ ~ ~4 if entity @n[predicate=pc:object/ally_player,type=!player,dx=2,dy=200,dz=2] run return 1
execute positioned ~-1.5 ~-100 ~-1.5 positioned ~ ~ ~-4 if entity @n[predicate=pc:object/ally_player,type=!player,dx=2,dy=200,dz=2] run return 1
execute if entity @n[type=!player,tag=pc.object.repair,tag=pc.repair_wireless,dx=2,dy=200,dz=2] run return 1
return fail