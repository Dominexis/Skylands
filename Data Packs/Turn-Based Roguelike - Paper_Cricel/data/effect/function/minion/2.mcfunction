
execute if entity @e[predicate=sys:entity/enemy,tag=!pc.entity.death,tag=!pc.effect.minion,limit=1] run return fail

data modify storage pc:temp passive.queue append value {func:"function effect:minion/3"}