
data modify storage pc:temp passive.passives set from entity @s data
data modify storage pc:temp passive.passives.type set from storage pc:temp passive.type
function pc:sys/object/passive/object/macro with storage pc:temp passive.passives