
tag @s remove pc.nearest.queue
tag @s remove pc.nearest.curr_queue
tag @s add pc.nearest.visited

execute if score #nearest.found pc.main matches 1 run return fail

# if (grid == target) :
$execute if score #nearest.index pc.main matches 2.. if entity @e[predicate=pc:sys/entity/$(target),dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] run return run function pc:sys/grid/range/type/nearest/4

# elif (grid != target) :
# (pass 1 only) stop pathing through any other entity so we don't get stuck on a mob,
# but remember this cell + its depth so the fallback can resume from here if every route is blocked
execute if score #nearest.pass pc.main matches 1 if score #nearest.index pc.main matches 2.. if entity @e[predicate=pc:sys/entity/any_real,dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] run return run function pc:sys/grid/range/type/nearest/2b

## check every direction
# if (is grid and visited == false) :
data modify storage pc:temp nearest.direction set value "~-4 ~ ~"
execute positioned ~4 ~ ~ as @e[tag=pc.grid,tag=!pc.nearest.visited,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/type/nearest/3
data modify storage pc:temp nearest.direction set value "~4 ~ ~"
execute positioned ~-4 ~ ~ as @e[tag=pc.grid,tag=!pc.nearest.visited,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/type/nearest/3
data modify storage pc:temp nearest.direction set value "~ ~ ~-4"
execute positioned ~ ~ ~4 as @e[tag=pc.grid,tag=!pc.nearest.visited,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/type/nearest/3
data modify storage pc:temp nearest.direction set value "~ ~ ~4"
execute positioned ~ ~ ~-4 as @e[tag=pc.grid,tag=!pc.nearest.visited,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/type/nearest/3

# execute unless data storage pc:temp range.nearest.is_diagonal run return fail
# tag @s add pc.nearest.is_diagonal
# data modify storage pc:temp nearest.is_diagonal set value 1b
# data modify storage pc:temp nearest.direction set value "~-4 ~ ~-4"
# execute positioned ~4 ~ ~4 as @e[tag=pc.grid,tag=!pc.nearest.visited,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/type/nearest/3
# data modify storage pc:temp nearest.direction set value "~4 ~ ~-4"
# execute positioned ~-4 ~ ~4 as @e[tag=pc.grid,tag=!pc.nearest.visited,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/type/nearest/3
# data modify storage pc:temp nearest.direction set value "~-4 ~ ~4"
# execute positioned ~4 ~ ~-4 as @e[tag=pc.grid,tag=!pc.nearest.visited,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/type/nearest/3
# data modify storage pc:temp nearest.direction set value "~4 ~ ~4"
# execute positioned ~-4 ~ ~-4 as @e[tag=pc.grid,tag=!pc.nearest.visited,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/type/nearest/3