## (storage) pc:temp range.nearest {block, *is_diagonal}

scoreboard players set #nearest.index pc.main 0
scoreboard players set #nearest.found pc.main 0
scoreboard players set #nearest.pass pc.main 1
execute store result score #nearest.block pc.main run function sys:grid/range/type/nearest/block

tag @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] add pc.nearest.queue
function sys:grid/range/type/nearest/loop

# fallback : every route was blocked by other entities, search again allowing the path to pass through them
execute if score #nearest.found pc.main matches 0 run function sys:grid/range/type/nearest/fallback/use

execute as @e[tag=pc.nearest.visited,type=marker] run function sys:grid/range/type/nearest/reset
data remove storage pc:temp nearest