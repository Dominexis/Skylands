## usage : get current item's data

$data modify storage pc:temp repair.item set from entity @e[tag=pc.player.now,type=armor_stand,limit=1] data.hotbar.$(hotbar)

execute store result score #db pc.main run data get storage pc:temp repair.item.db.value
execute store result score #dbmax pc.main run data get storage pc:temp repair.item.db.max