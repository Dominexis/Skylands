
# effect
$data modify storage pc:temp restock set from entity @s data.item[$(index)]
function pc:sys/game/rest_area/trader/restock/4 with storage pc:temp restock
$data modify entity @s data.item[$(index)] set from storage pc:temp restock