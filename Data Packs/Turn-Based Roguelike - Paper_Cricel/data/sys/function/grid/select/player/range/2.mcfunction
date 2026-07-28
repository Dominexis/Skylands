
tag @e[tag=pc.grid.in_range,type=marker] remove pc.grid.in_range
data modify storage pc:temp grid set value {display:'range'}
execute store result storage pc:temp grid.selector int 1 run scoreboard players get @s pc.entity.id

$function item:$(category)/$(id)/range
function sys:utils/passive/use {passive:'range_modifier'}

execute as @e[tag=pc.grid,type=minecraft:marker] at @s run function sys:grid/update
data modify entity @s data.equipment.mainhand set from entity 20060423-0-0-1-1 item