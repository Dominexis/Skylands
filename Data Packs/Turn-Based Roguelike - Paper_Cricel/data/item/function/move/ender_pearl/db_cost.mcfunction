
# if (phantom at selected grid) :
execute at @e[tag=pc.grid.selecting,type=minecraft:marker,limit=1] positioned ~-1.5 ~-100 ~-1.5 if entity @e[tag=pc.entity.phantom,type=armor_stand,dx=2,dy=200,dz=2,limit=1] run scoreboard players set #dbcost pc.main 0