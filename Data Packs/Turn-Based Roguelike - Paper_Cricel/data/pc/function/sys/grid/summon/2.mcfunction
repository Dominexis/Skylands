
# effect
scoreboard players operation #x3 pc.main = #x2 pc.main
scoreboard players operation #y3 pc.main = #y2 pc.main
execute store result storage pc:temp grid[0][0].offset_x int 4 run scoreboard players operation #x3 pc.main -= #x1 pc.main
execute store result storage pc:temp grid[0][0].offset_y int 4 run scoreboard players operation #y3 pc.main -= #y1 pc.main

execute summon marker run function pc:sys/grid/summon/per with storage pc:temp grid[0][0]

scoreboard players add #y2 pc.main 1
data remove storage pc:temp grid[0][0]

execute if data storage pc:temp grid[0][0] run function pc:sys/grid/summon/2
execute unless data storage pc:temp grid[0][0] if data storage pc:temp grid[0] run function pc:sys/grid/summon/3