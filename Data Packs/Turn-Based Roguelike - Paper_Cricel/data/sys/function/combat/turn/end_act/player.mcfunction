
data remove entity @s data.equipment.mainhand

scoreboard players set #stop.end_act pc.main 0
function sys:utils/passive/use {passive:"end_act"}
execute if score #stop.end_act pc.main matches 1 run return fail

tag @e[tag=pc.grid.atker,type=minecraft:marker,limit=1] remove pc.grid.atker
tag @e[tag=pc.player.selector,predicate=sys:entity/any_real,limit=1] remove pc.player.selector
data remove storage pc:temp rc_item

execute as @e[predicate=!sys:entity/player,predicate=sys:entity/any_real] at @s run function sys:entity/intent/update