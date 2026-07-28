
loot replace block ~ ~ ~ container.13 loot sys:option/campfire/epmax
execute store result score #money pc.main store result block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_data".pc.money_cost int 1 run data get storage pc:game shop.campfire.epmax.current
item modify block ~ ~ ~ container.13 sys:money
