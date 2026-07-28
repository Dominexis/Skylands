## (exe) player

function sys:entity/repair/load/item with storage pc:temp rc_item
execute at @e[tag=pc.grid.looking,type=minecraft:marker,limit=1] positioned ~-1.5 ~-100 ~-1.5 as @e[dx=2,dy=200,dz=2,predicate=sys:entity/repair,limit=1] at @s run function sys:entity/repair/load/entity

execute unless data storage pc:temp repair.entity run return fail

execute if function sys:entity/repair/is run function sys:entity/repair/2

tag @e[tag=pc.repair.now,limit=1] remove pc.repair.now
data remove storage pc:temp repair