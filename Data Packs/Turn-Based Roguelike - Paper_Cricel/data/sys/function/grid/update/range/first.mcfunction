
execute store success score #is_looking pc.main if entity @s[tag=pc.grid.looking]
execute store success score #is_in_range pc.main if entity @s[tag=pc.grid.in_range]
execute store success score #is_repairable pc.main run function sys:grid/update/range/is_repairable/use
function sys:grid/is_selecting
