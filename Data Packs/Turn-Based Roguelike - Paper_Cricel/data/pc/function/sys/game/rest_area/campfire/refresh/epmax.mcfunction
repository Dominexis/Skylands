
loot replace block ~ ~ ~ container.15 loot pc:shop/campfire/epmax
execute store result score #money pc.main store result block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data".pc.shop_cost int 1 run data get storage pc:game shop.campfire.now.epmax
item modify block ~ ~ ~ container.15 pc:money