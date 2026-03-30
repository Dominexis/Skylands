
loot replace block ~ ~ ~ container.13 loot pc:shop/campfire/hpmax
execute store result score #money pc.main store result block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_data".pc.shop_cost int 1 run data get storage pc:game shop.campfire.now.hpmax
item modify block ~ ~ ~ container.13 pc:money