
# effect
execute if data entity @s {data:{path_finding:{last_grid:south}}} positioned ~ ~ ~-4 rotated 0 0 run function pc:sys/grid/select/nearest/back/2
execute if data entity @s {data:{path_finding:{last_grid:north}}} positioned ~ ~ ~4 rotated 180 0 run function pc:sys/grid/select/nearest/back/2
execute if data entity @s {data:{path_finding:{last_grid:east}}} positioned ~-4 ~ ~ rotated -90 0 run function pc:sys/grid/select/nearest/back/2
execute if data entity @s {data:{path_finding:{last_grid:west}}} positioned ~4 ~ ~ rotated 90 0 run function pc:sys/grid/select/nearest/back/2
execute if data entity @s {data:{path_finding:{last_grid:eastsouth}}} positioned ~-4 ~ ~-4 rotated -45 0 run function pc:sys/grid/select/nearest/back/2
execute if data entity @s {data:{path_finding:{last_grid:westsouth}}} positioned ~4 ~ ~-4 rotated 45 0 run function pc:sys/grid/select/nearest/back/2
execute if data entity @s {data:{path_finding:{last_grid:eastnorth}}} positioned ~-4 ~ ~4 rotated -135 0 run function pc:sys/grid/select/nearest/back/2
execute if data entity @s {data:{path_finding:{last_grid:westnorth}}} positioned ~4 ~ ~4 rotated 135 0 run function pc:sys/grid/select/nearest/back/2