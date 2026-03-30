# usage : (storage) pc:temp nearest {object, *block, *can_diagonal}

# effect
function pc:sys/grid/select/sys/first
scoreboard players set #cost pc.main 0
execute store result score #block pc.main run data get storage pc:temp nearest.block
execute unless data storage pc:temp nearest.block run scoreboard players set #block pc.main 1

execute as @n[type=marker,tag=pc.grid,distance=..100] at @s run function pc:sys/grid/select/nearest/check/2 with storage pc:temp nearest
function pc:sys/grid/select/nearest/loop

data remove storage pc:temp nearest
execute as @e[type=marker,tag=pc.grid,distance=..100] run data remove entity @s data.path_finding
tag @e[type=marker,tag=pc.path_finding.checked,distance=..100] remove pc.path_finding.checked
tag @e[type=marker,tag=pc.path_finding.next_grid,distance=..100] remove pc.path_finding.next_grid
tag @n[type=marker,tag=pc.path_finding.target,distance=..100] remove pc.path_finding.target
function pc:sys/grid/select/sys/last