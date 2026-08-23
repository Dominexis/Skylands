
# if (available == false) :
execute as @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] unless function pc:sys/grid/is_available run return run function pc:sys/grid/range/type/line/avail/use

# elif (grid.exist == false) :
execute unless entity @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] run return fail

# else :
execute as @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] at @s run function pc:sys/grid/range/type/line/2b with storage pc:temp range

# if (index > block) :
execute if score #line.index pc.main >= #line.block pc.main run return fail

# elif (has unit on grid) :
execute if entity @e[predicate=pc:sys/entity/any_real,dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] run return run function pc:sys/grid/range/type/line/unit/use

# else :
return 1