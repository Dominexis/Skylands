
function pc:sys/utils/passive/use {passive:"on_repair"}

$execute unless data storage pc:temp repair.entity.repair{disable:false} run data modify entity @s data.hotbar.$(hotbar).disable_turn set from storage pc:temp repair.entity.repair.round
data modify storage pc:temp hotbar set from entity @s data.hotbar