
scoreboard players set #self pc.grid.nearest 1000
execute as @e[tag=pc.intent.now,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s if function pc:sys/grid/is_occupied run tag @s add pc.intent.occupied

scoreboard players operation #self pc.grid.nearest < @e[tag=pc.intent.occupied,tag=pc.intent.now,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.grid.nearest
scoreboard players remove #self pc.grid.nearest 1

# if (occupied == false) :
execute if score #self pc.grid.nearest matches 999 at @e[tag=pc.intent.now,type=marker,sort=furthest,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run return run function pc:sys/grid/range/use

# elif (occupied == true && index >= 1) :
execute at @e[tag=pc.intent.now,type=marker,predicate=pc:sys/owner/grid_nearest,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run return run function pc:sys/grid/range/use

# else :
function pc:sys/grid/range/use