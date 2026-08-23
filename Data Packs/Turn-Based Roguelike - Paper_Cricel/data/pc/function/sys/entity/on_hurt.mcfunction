
function pc:sys/utils/passive/use {passive:"damage_value"}
execute if data storage pc:temp damage.modifiers[0] run function pc:sys/entity/dmg/modifiers/return with storage pc:temp damage.modifiers[0]