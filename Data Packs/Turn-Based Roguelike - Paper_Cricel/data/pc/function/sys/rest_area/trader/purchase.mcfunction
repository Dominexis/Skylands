
$execute positioned $(pos) align xyz as @e[type=villager,dx=0,dy=0,dz=0,limit=1] run data modify entity @s data.item[{slot:$(slot)}].is_sell set value 0b
function pc:sys/rest_area/trader/update