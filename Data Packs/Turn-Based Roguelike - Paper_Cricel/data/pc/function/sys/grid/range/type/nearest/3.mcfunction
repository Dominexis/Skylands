
tag @s add pc.nearest.visited

# if (grid == throughable) :
execute unless function pc:sys/grid/is_available run return fail

tag @s add pc.nearest.queue
data modify entity @s data.nearest set from storage pc:temp nearest