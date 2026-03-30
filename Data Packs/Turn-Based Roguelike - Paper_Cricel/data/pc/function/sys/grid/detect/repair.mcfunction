
# effect
execute positioned ~-1.5 ~-100 ~-1.5 unless entity @n[type=!minecraft:player,dx=2,dy=200,dz=2,tag=pc.object.repair] run return fail
execute positioned ~-1.5 ~-100 ~-1.5 positioned ~4 ~ ~ if entity @n[type=!minecraft:player,dx=2,dy=200,dz=2,predicate=pc:object/ally_player] run return 1
execute positioned ~-1.5 ~-100 ~-1.5 positioned ~-4 ~ ~ if entity @n[type=!minecraft:player,dx=2,dy=200,dz=2,predicate=pc:object/ally_player] run return 1
execute positioned ~-1.5 ~-100 ~-1.5 positioned ~ ~ ~4 if entity @n[type=!minecraft:player,dx=2,dy=200,dz=2,predicate=pc:object/ally_player] run return 1
execute positioned ~-1.5 ~-100 ~-1.5 positioned ~ ~ ~-4 if entity @n[type=!minecraft:player,dx=2,dy=200,dz=2,predicate=pc:object/ally_player] run return 1
execute if entity @n[type=!minecraft:player,dx=2,dy=200,dz=2,tag=pc.object.repair,tag=pc.repair_wireless] run return 1
return fail