
scoreboard players add #nearest.index pc.main 1

tag @e[tag=pc.nearest.queue,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] add pc.nearest.curr_queue
execute as @e[tag=pc.nearest.curr_queue,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s positioned ~-1.5 ~-100 ~-1.5 run function pc:sys/grid/range/type/nearest/2 with storage pc:temp range.nearest

execute if score #nearest.found pc.main matches 0 if entity @e[tag=pc.nearest.queue,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/range/type/nearest/loop