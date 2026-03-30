
loot replace block ~ ~ ~ container.11 loot pc:shop/campfire/cure
execute store result score #money pc.main store result block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_data".pc.shop_cost int 1 run data get storage pc:game shop.campfire.now.cure
item modify block ~ ~ ~ container.11 pc:money