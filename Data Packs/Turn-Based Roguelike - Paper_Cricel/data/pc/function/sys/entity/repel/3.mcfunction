
execute store result score #PosY pc.main run data get entity @s data.PosY 10
execute as @e[predicate=pc:sys/entity/any_real,predicate=pc:sys/owner/entity,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s align xz run function pc:sys/entity/repel/3b

execute positioned ~-1.5 ~-100 ~-1.5 run tag @e[tag=pc.grid,dx=2,dy=200,dz=2,type=minecraft:marker,limit=1] remove pc.grid.repel

kill @s