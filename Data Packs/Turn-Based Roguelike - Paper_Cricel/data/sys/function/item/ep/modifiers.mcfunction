## (storage) pc:temp item == data.hotbar.$(hotbar).ep

$data modify storage pc:temp item set from $(id)
execute store result score #base pc.main run data get storage pc:temp item.base

execute if data storage pc:temp item.modifiers[0] run function sys:item/ep/modifiers/2

execute store result storage pc:temp item.value int 1 run scoreboard players get #base pc.main
$data modify $(id) set from storage pc:temp item
data remove storage pc:temp item