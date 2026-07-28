
execute positioned ~-1.25 ~-1 ~-1.25 if entity @e[tag=pc.grid,type=marker,dx=1.25,dy=0,dz=1.25,limit=1] run return 1
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[predicate=sys:entity/any_real,dx=0,dy=0,dz=0,limit=1] run return 1