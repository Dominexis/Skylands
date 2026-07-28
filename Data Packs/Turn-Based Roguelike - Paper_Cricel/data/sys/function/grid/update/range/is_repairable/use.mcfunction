## (exe) grid marker

# if (player in 1-block cross or specific repair) :
execute positioned ~-1.5 ~-100 ~-1.5 if function sys:grid/update/range/is_repairable/is run return run function sys:grid/update/range/is_repairable/true

# else :
tag @s remove pc.grid.is_repairable
return fail