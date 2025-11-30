
# effect
execute if data storage pc:temp {grid:{type:all}} positioned ~-1.5 ~-100 ~-1.5 run scoreboard players set @e[predicate=pc:object/all,type=!player,dx=2,dy=200,dz=2] pc.object.is_victim 1
execute if data storage pc:temp {grid:{type:ally}} positioned ~-1.5 ~-100 ~-1.5 run scoreboard players set @e[predicate=pc:object/ally,type=!player,dx=2,dy=200,dz=2] pc.object.is_victim 1
execute if data storage pc:temp {grid:{type:mob}} positioned ~-1.5 ~-100 ~-1.5 run scoreboard players set @e[predicate=pc:object/mob,type=!player,dx=2,dy=200,dz=2] pc.object.is_victim 1