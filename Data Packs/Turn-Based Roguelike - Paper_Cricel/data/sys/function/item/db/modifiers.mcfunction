## (storage) pc:temp item == data.hotbar.$(hotbar).db

$data modify storage pc:temp item set from $(id)
execute store result score #base pc.main run data get storage pc:temp item.base
execute store result score #value pc.main run data get storage pc:temp item.value

execute if data storage pc:temp item.modifiers[0] run function sys:item/db/modifiers/2

execute store result storage pc:temp item.max int 1 run scoreboard players get #base pc.main
execute store result storage pc:temp item.value int 1 run scoreboard players operation #value pc.main < #base pc.main
$data modify $(id) set from storage pc:temp item
data remove storage pc:temp item