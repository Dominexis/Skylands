
scoreboard players set #self pc.grid.nearest 1000
execute as @e[tag=pc.intent.now,type=marker] at @s if function sys:grid/is_occupied run tag @s add pc.intent.occupied

scoreboard players operation #self pc.grid.nearest < @e[tag=pc.intent.occupied,tag=pc.intent.now,type=marker] pc.grid.nearest
scoreboard players remove #self pc.grid.nearest 1

# if (occupied == false) :
execute if score #self pc.grid.nearest matches 999 at @e[tag=pc.intent.now,type=marker,sort=furthest,limit=1] run return run function sys:grid/range/use

# elif (occupied == true && index >= 1) :
execute at @e[tag=pc.intent.now,type=marker,predicate=sys:owner/grid_nearest,limit=1] run return run function sys:grid/range/use

# else :
function sys:grid/range/use