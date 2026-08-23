
tag @e[tag=pc.grid.in_range,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.grid.in_range
data modify storage pc:temp grid set value {display:'range'}
execute store result storage pc:temp grid.selector int 1 run scoreboard players get @s pc.entity.id

$function pc:item/$(category)/$(id)/range
function pc:sys/utils/passive/use {passive:'range_modifier'}

execute as @e[tag=pc.grid,type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/grid/update
data modify entity @s data.equipment.mainhand set from entity 20060423-0-0-1-1 item