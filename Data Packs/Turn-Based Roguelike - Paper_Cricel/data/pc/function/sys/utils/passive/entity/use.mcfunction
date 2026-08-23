
function pc:sys/utils/passive/effect/return/use
function pc:sys/utils/passive/effect/void/use

data modify storage pc:temp passive.self.id set from entity @s data.id
data modify storage pc:temp passive.self.team set from entity @s data.team
data modify storage pc:temp passive.self.passive set from storage pc:temp passive.passive
function pc:sys/utils/passive/entity/2 with storage pc:temp passive.self