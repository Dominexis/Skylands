# exe : object

# effect
data modify storage pc:temp repair.item set from storage pc:temp rc.now
function pc:sys/player/rc/get_durability with storage pc:temp repair.item

execute at @n[type=minecraft:marker,distance=..100,tag=pc.grid.now,predicate=pc:grid/repair] as @n[type=!minecraft:player,distance=..100,tag=pc.object.repair] run function pc:sys/object/repair/object/use

# Detect
scoreboard players set #pass pc.main 1
execute if score #pass pc.main matches 1 if score #dbmax pc.main matches -1 run function pc:sys/object/repair/refuse/infinte
execute if score #pass pc.main matches 1 if score #db pc.main >= #dbmax pc.main run function pc:sys/object/repair/refuse/full
execute if score #pass pc.main matches 1 if data storage pc:temp repair.object_data.repair_info run function pc:sys/object/repair/refuse/repairing
execute if score #pass pc.main matches 1 run function pc:sys/object/repair/2

# Reset
tag @n[type=!minecraft:player,distance=..100,tag=pc.repair.now] remove pc.repair.now
data remove storage pc:temp repair

return fail