
execute positioned ~4 ~ ~ if entity @e[scores={pc.entity.repairer=1},dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] run return 1
execute positioned ~ ~ ~4 if entity @e[scores={pc.entity.repairer=1},dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] run return 1
execute positioned ~-4 ~ ~ if entity @e[scores={pc.entity.repairer=1},dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] run return 1
execute positioned ~ ~ ~-4 if entity @e[scores={pc.entity.repairer=1},dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] run return 1
execute if entity @e[tag=pc.entity.repair.wireless,predicate=pc:sys/entity/repair,dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] run return 1
return fail