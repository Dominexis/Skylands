
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

data modify storage pc:temp shield set value {value:7}
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:entity/shield/use

execute unless data entity @s data.hotbar.move.disable_turn run data modify entity @s data.hotbar.move.disable_turn set value 1
function sys:player/hotbar/update {hotbar:'move'}