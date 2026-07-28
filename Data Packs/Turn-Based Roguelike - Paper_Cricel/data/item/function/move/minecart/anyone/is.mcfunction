
execute positioned ~-1.5 ~-100 ~-1.5 run scoreboard players set @e[predicate=sys:entity/any_real,tag=!pc.atker,dx=2,dy=200,dz=2,limit=1] pc.entity.victim 1
return run execute if entity @e[predicate=sys:entity/victim,limit=1]