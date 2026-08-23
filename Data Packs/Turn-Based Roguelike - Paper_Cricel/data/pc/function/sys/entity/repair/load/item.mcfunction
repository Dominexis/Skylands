## usage : get current item's data

$data modify storage pc:temp repair.item set from entity @e[tag=pc.player.now,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] data.hotbar.$(hotbar)

execute store result score #db pc.main run data get storage pc:temp repair.item.db.value
execute store result score #dbmax pc.main run data get storage pc:temp repair.item.db.max