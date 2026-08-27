
data modify storage pc:temp passive.current set from storage pc:temp passive.passives[0]

function pc:sys/utils/passive/player/interpret with storage pc:temp passive.current

data remove storage pc:temp passive.passives[0]
execute if data storage pc:temp passive.passives[0] run return run function pc:sys/utils/passive/player/loop