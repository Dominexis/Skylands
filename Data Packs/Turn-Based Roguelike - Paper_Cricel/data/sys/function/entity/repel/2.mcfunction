
# if (stayable == false) :
execute store success score #is_diagonal pc.main run function sys:entity/rotate/is_diagonal
execute unless function sys:entity/repel/is run return fail

# else :
function sys:utils/passive/use {passive:"on_repel"}

summon minecraft:item ~ ~ ~ {Tags:["pc.sys.object.motion","pc.sys.object.motion.summon"],Item:{id:"minecraft:stone",components:{"minecraft:item_model":"air"}},PickupDelay:-1s}

execute positioned 0.0 0.0 0.0 rotated ~ 0 summon minecraft:marker run function sys:entity/repel/2b
execute if score #is_diagonal pc.main matches 0 positioned ^ ^ ^4 positioned ~-1.5 ~-100 ~-1.5 run tag @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] add pc.grid.repel
execute if score #is_diagonal pc.main matches 1 positioned ^ ^ ^5.656 positioned ~-1.5 ~-100 ~-1.5 run tag @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] add pc.grid.repel

scoreboard players operation @e[tag=pc.sys.object.motion.summon,distance=..0.1,type=item,limit=1] pc.target.id = @s pc.entity.id
execute store result entity @e[tag=pc.sys.object.motion.summon,distance=..0.1,type=item,limit=1] data.PosY double 0.1 run data get entity @s Pos[1] 10

tag @e[tag=pc.sys.object.motion.summon,distance=..0.1,type=item,limit=1] remove pc.sys.object.motion.summon

return 1