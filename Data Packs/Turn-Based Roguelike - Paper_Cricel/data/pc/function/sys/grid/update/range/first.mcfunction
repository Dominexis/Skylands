
execute store success score #is_looking pc.main if entity @s[tag=pc.grid.looking]
execute store success score #is_in_range pc.main if entity @s[tag=pc.grid.in_range]
execute store success score #is_repairable pc.main run function pc:sys/grid/update/range/is_repairable/use
function pc:sys/grid/is_selecting
