
execute positioned ~-1.5 ~-100 ~-1.5 as @e[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.grid,limit=1] unless data entity @s data.effect.rail_area run return 1
return fail