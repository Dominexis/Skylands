
execute positioned ~-1.5 ~-100 ~-1.5 run scoreboard players set @e[predicate=pc:sys/entity/any_real,tag=!pc.atker,dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] pc.entity.victim 1
return run execute if entity @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant]