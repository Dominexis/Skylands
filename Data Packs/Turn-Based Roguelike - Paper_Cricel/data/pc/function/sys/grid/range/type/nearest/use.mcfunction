## (storage) pc:temp range.nearest {block, *is_diagonal}

scoreboard players set #nearest.index pc.main 0
scoreboard players set #nearest.found pc.main 0
scoreboard players set #nearest.pass pc.main 1
execute store result score #nearest.block pc.main run function pc:sys/grid/range/type/nearest/block

tag @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] add pc.nearest.queue
function pc:sys/grid/range/type/nearest/loop

# fallback : every route was blocked by other entities, search again allowing the path to pass through them
execute if score #nearest.found pc.main matches 0 run function pc:sys/grid/range/type/nearest/fallback/use

execute as @e[tag=pc.nearest.visited,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/range/type/nearest/reset
data remove storage pc:temp nearest