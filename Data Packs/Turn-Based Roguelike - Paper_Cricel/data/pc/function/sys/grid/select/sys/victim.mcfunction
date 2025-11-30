
# effect
execute if data storage pc:temp {grid:{type:"all"}} positioned ~-1.5 ~-100 ~-1.5 run scoreboard players set @e[type=!minecraft:player,dx=2,dy=200,dz=2,predicate=pc:object/all] pc.object.is_victim 1
execute if data storage pc:temp {grid:{type:"ally"}} positioned ~-1.5 ~-100 ~-1.5 run scoreboard players set @e[type=!minecraft:player,dx=2,dy=200,dz=2,predicate=pc:object/ally] pc.object.is_victim 1
execute if data storage pc:temp {grid:{type:"mob"}} positioned ~-1.5 ~-100 ~-1.5 run scoreboard players set @e[type=!minecraft:player,dx=2,dy=200,dz=2,predicate=pc:object/mob] pc.object.is_victim 1