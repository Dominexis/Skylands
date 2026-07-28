
loot replace block ~ ~ ~ container.11 loot sys:option/campfire/hpmax
execute store result score #money pc.main store result block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_data".pc.money_cost int 1 run data get storage pc:game shop.campfire.hpmax.current
item modify block ~ ~ ~ container.11 sys:money
