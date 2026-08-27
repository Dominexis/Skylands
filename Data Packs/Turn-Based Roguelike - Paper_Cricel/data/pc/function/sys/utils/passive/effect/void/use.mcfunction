
execute positioned ~-1.5 ~-100 ~-1.5 run data modify storage pc:temp passive.effects.queue set from entity @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] data.effects
execute if data storage pc:temp passive.effects.queue[0] run function pc:sys/utils/passive/effect/void/2