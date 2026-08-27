
data remove entity @s data.equipment.mainhand

scoreboard players set #stop.end_act pc.main 0
function pc:sys/utils/passive/use {passive:"end_act"}
execute if score #stop.end_act pc.main matches 1 run return fail

tag @e[tag=pc.grid.atker,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.grid.atker
tag @e[tag=pc.player.selector,predicate=pc:sys/entity/any_real,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] remove pc.player.selector
data remove storage pc:temp rc_item

execute as @e[predicate=!pc:sys/entity/player,predicate=pc:sys/entity/any_real,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/entity/intent/update