
# effect
scoreboard players add #x2 pc.main 1
scoreboard players set #y2 pc.main 0
data remove storage pc:temp grid[0]

execute if data storage pc:temp grid[0][0] run function pc:sys/grid/summon/2

# fx