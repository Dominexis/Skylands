
# effect
data modify storage pc:temp grid set from storage pc:game combat.grid
execute store result score #x1 pc.main run data get storage pc:game combat.grid_center[0]
execute store result score #y1 pc.main run data get storage pc:game combat.grid_center[1]
scoreboard players set #x2 pc.main 0
scoreboard players set #y2 pc.main 0

execute if data storage pc:temp grid[0][0] run function pc:sys/grid/summon/2

data remove storage pc:temp grid