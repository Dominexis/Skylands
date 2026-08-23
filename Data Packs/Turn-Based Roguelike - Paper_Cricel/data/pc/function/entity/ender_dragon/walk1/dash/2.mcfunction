
tag @s add pc.entity.self
execute positioned ~-0.5 ~-100 ~-0.5 run scoreboard players set @e[predicate=pc:sys/entity/any,tag=!pc.entity.self,dx=0,dy=200,dz=0,limit=1,type=!minecraft:giant] pc.entity.victim 1
tag @s remove pc.entity.self

execute positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.intent.now,dx=2,dy=200,dz=2,type=minecraft:marker,limit=1] positioned as @s run function pc:entity/ender_dragon/walk1/dash/2b

function pc:sys/grid/range/clear