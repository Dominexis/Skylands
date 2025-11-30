
data modify storage pc:temp nearest.path_finding.last_grid set value 'eastsouth'
execute positioned ~4 ~ ~4 run function pc:sys/grid/select/nearest/check/use

data modify storage pc:temp nearest.path_finding.last_grid set value 'westsouth'
execute positioned ~-4 ~ ~4 run function pc:sys/grid/select/nearest/check/use

data modify storage pc:temp nearest.path_finding.last_grid set value 'eastnorth'
execute positioned ~4 ~ ~-4 run function pc:sys/grid/select/nearest/check/use

data modify storage pc:temp nearest.path_finding.last_grid set value 'westnorth'
execute positioned ~-4 ~ ~-4 run function pc:sys/grid/select/nearest/check/use