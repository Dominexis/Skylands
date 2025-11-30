# exe : trader

# effect
function pc:sys/game/rest_area/purchase/affordable_value
execute positioned ~ ~1 ~ summon chest_minecart run function pc:sys/item/return/inproperly_item

execute store result score #max pc.main run data get entity @s data.item
scoreboard players remove #max pc.main 1
scoreboard players set #index pc.main -1
function pc:sys/game/rest_area/trader/refresh/2

data remove storage pc:temp refresh