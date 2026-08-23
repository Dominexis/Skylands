
# if (phantom at selected grid) :
execute at @e[tag=pc.grid.selecting,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] positioned ~-1.5 ~-100 ~-1.5 if entity @e[tag=pc.entity.phantom,type=armor_stand,dx=2,dy=200,dz=2,limit=1] run scoreboard players set #dbcost pc.main 0