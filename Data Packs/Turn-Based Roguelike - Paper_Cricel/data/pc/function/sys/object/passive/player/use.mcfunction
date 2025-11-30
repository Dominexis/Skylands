
data modify storage pc:temp passive.passives set from entity @s data.hotbar
data modify storage pc:temp passive.passives.type set from storage pc:temp passive.type
function pc:sys/object/passive/player/macro with storage pc:temp passive.passives