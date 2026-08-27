## (exe) player | (macro) hotbar
## consume #dbcost durability from the used item's slot (skip infinite items)

$execute store result score #dbmax pc.main run data get entity @s data.hotbar.$(hotbar).db.max
execute if score #dbmax pc.main matches -1 run return fail

data remove storage pc:temp repair
$data modify storage pc:temp repair.slot set value "$(hotbar)"
execute store result storage pc:temp repair.value int -1 run scoreboard players get #dbcost pc.main

function pc:sys/item/db/use
