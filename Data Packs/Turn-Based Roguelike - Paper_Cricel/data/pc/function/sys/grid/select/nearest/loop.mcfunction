
# effect
scoreboard players add #cost pc.main 1

execute as @e[type=minecraft:marker,distance=..100,tag=pc.path_finding.next_grid] at @s positioned ~-1.5 ~-100 ~-1.5 run function pc:sys/grid/select/nearest/path/use

execute if data storage pc:temp nearest.found as @n[type=minecraft:marker,distance=..100,tag=pc.grid,tag=pc.path_finding.target] at @s run return run function pc:sys/grid/select/nearest/back/use
execute if entity @n[type=minecraft:marker,distance=..100,tag=pc.path_finding.next_grid] run function pc:sys/grid/select/nearest/loop