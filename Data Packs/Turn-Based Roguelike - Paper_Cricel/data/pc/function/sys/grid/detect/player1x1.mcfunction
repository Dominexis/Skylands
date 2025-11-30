
# effect
execute positioned ~4 ~ ~ positioned ~-1.5 ~-100 ~-1.5 if entity @n[predicate=pc:object/ally_player,type=!player,dx=2,dy=200,dz=2] run return 1
execute positioned ~-4 ~ ~ positioned ~-1.5 ~-100 ~-1.5 if entity @n[predicate=pc:object/ally_player,type=!player,dx=2,dy=200,dz=2] run return 1
execute positioned ~ ~ ~4 positioned ~-1.5 ~-100 ~-1.5 if entity @n[predicate=pc:object/ally_player,type=!player,dx=2,dy=200,dz=2] run return 1
execute positioned ~ ~ ~-4 positioned ~-1.5 ~-100 ~-1.5 if entity @n[predicate=pc:object/ally_player,type=!player,dx=2,dy=200,dz=2] run return 1