
data modify storage pc:temp nearest.path_finding.last_grid set value 'east'
execute positioned ~4 ~ ~ run function pc:sys/grid/select/nearest/check/use

data modify storage pc:temp nearest.path_finding.last_grid set value 'west'
execute positioned ~-4 ~ ~ run function pc:sys/grid/select/nearest/check/use

data modify storage pc:temp nearest.path_finding.last_grid set value 'south'
execute positioned ~ ~ ~4 run function pc:sys/grid/select/nearest/check/use

data modify storage pc:temp nearest.path_finding.last_grid set value 'north'
execute positioned ~ ~ ~-4 run function pc:sys/grid/select/nearest/check/use