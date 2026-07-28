
execute store result score #PosY pc.main run data get entity @s data.PosY 10
execute as @e[predicate=sys:entity/any_real,predicate=sys:owner/entity,limit=1] at @s align xz run function sys:entity/repel/3b

execute positioned ~-1.5 ~-100 ~-1.5 run tag @e[tag=pc.grid,dx=2,dy=200,dz=2,type=minecraft:marker,limit=1] remove pc.grid.repel

kill @s