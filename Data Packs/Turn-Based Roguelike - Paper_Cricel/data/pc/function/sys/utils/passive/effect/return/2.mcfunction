
data modify storage pc:temp passive.current set from storage pc:temp passive.effects.queue[0]
data modify storage pc:temp passive.id set from storage pc:temp passive.current.id

function pc:sys/utils/passive/effect/return/3 with storage pc:temp passive
execute if data storage pc:temp passive.current run data modify storage pc:temp passive.effects.processed append from storage pc:temp passive.current

data remove storage pc:temp passive.effects.queue[0]
execute if data storage pc:temp passive.effects.queue[0] run return run function pc:sys/utils/passive/effect/return/2

# if (effects) :
execute if data storage pc:temp passive.effects.processed[0] run return run data modify entity @s data.effects set from storage pc:temp passive.effects.processed

# else :
data remove entity @s data.effects