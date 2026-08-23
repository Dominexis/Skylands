
# if (in range == true && is looking == true) :
execute if score #is_in_range pc.main matches 1 if score #is_looking pc.main matches 1 run return run tag @s add pc.grid.selecting

# else :
tag @s remove pc.grid.selecting
return fail