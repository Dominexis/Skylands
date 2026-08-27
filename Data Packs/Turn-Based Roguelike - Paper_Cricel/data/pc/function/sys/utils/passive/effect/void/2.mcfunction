
data modify storage pc:temp passive.current set from storage pc:temp passive.effects.queue[0]
data modify storage pc:temp passive.id set from storage pc:temp passive.current.id

function pc:sys/utils/passive/effect/void/3 with storage pc:temp passive

data remove storage pc:temp passive.effects.queue[0]
execute if data storage pc:temp passive.effects.queue[0] run return run function pc:sys/utils/passive/effect/void/2