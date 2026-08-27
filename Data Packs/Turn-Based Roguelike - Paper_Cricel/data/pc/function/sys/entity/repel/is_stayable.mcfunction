
# if (no grid || grid == repel) :
execute unless entity @e[tag=pc.grid,tag=!pc.grid.repel,dx=2,dy=200,dz=2,type=minecraft:marker,limit=1] run return fail

# elif (grid != spac) :
execute unless data entity @e[tag=pc.grid,dx=2,dy=200,dz=2,type=minecraft:marker,limit=1] data{type:"spac"} run return fail

# elif (grid == occupied) :
execute if entity @e[predicate=pc:sys/entity/any_real,dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] run return fail

# else :
return 1