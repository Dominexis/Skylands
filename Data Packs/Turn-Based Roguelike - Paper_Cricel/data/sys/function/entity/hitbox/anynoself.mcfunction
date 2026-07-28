
tag @s add pc.entity.self
execute positioned ~-0.5 ~-100 ~-0.5 if entity @e[predicate=sys:entity/any,tag=!pc.entity.self,dx=0,dy=200,dz=0,limit=1] run return 1
tag @s remove pc.entity.self