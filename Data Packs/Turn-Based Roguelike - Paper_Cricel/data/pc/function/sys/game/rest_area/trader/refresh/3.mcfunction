
# effect
$data modify storage pc:temp refresh set from entity @s data.item[$(index)]
execute if data storage pc:temp {refresh:{is_sell:false}} run return fail

data modify block ~ ~1 ~ Items append from storage pc:temp refresh.merchandise
function pc:sys/game/rest_area/trader/refresh/4 with storage pc:temp refresh