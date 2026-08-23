
execute if entity @e[predicate=pc:sys/entity/enemy,tag=!pc.entity.death,tag=!pc.effect.minion,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run return fail

data modify storage pc:temp passive.queue append value {func:"function pc:effect/minion/3"}