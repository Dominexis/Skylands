
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function pc:sys/grid/range/use

data modify storage pc:temp shield set value {value:7}
execute as @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/entity/shield/use

execute unless data entity @s data.hotbar.move.disable_turn run data modify entity @s data.hotbar.move.disable_turn set value 1
function pc:sys/player/hotbar/update {hotbar:'move'}