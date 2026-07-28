
# if (available == false) :
execute if score #is_available pc.main matches 0 run return run data remove entity @s item

# elif (intent display) :
execute if data storage pc:temp grid{display:'intent'} run return run function sys:grid/update/intent/use

# else :
function sys:grid/update/range/use