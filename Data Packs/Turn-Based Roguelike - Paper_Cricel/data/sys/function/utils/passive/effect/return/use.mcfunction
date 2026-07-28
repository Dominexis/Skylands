## (storage) pc:temp passive.effects.queue

data modify storage pc:temp passive.effects.queue set from entity @s data.effects
execute if data storage pc:temp passive.effects.queue[0] run function sys:utils/passive/effect/return/2