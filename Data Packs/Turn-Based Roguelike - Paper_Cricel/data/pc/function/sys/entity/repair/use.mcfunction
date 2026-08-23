## (exe) player

function pc:sys/entity/repair/load/item with storage pc:temp rc_item
execute at @e[tag=pc.grid.looking,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] positioned ~-1.5 ~-100 ~-1.5 as @e[dx=2,dy=200,dz=2,predicate=pc:sys/entity/repair,limit=1,type=!minecraft:giant] at @s run function pc:sys/entity/repair/load/entity

execute unless data storage pc:temp repair.entity run return fail

execute if function pc:sys/entity/repair/is run function pc:sys/entity/repair/2

tag @e[tag=pc.repair.now,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] remove pc.repair.now
data remove storage pc:temp repair