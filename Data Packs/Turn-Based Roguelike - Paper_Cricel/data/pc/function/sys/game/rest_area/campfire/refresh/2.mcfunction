
# reset
function pc:sys/game/rest_area/purchase/affordable_value
execute summon chest_minecart run function pc:sys/item/return/inproperly_item

# merchandise
execute if data storage pc:game {shop:{campfire:{is_sell:{cure:true}}}} run loot replace block ~ ~ ~ container.11 loot pc:shop/campfire/cure
execute store result score #money pc.main store result block ~ ~ ~ Items[{Slot:11b}].components."minecraft:custom_data".pc.shop_cost int 1 run data get storage pc:game shop.campfire.now.cure
item modify block ~ ~ ~ container.11 pc:money

execute if data storage pc:game {shop:{campfire:{is_sell:{hpmax:true}}}} run loot replace block ~ ~ ~ container.13 loot pc:shop/campfire/hpmax
execute store result score #money pc.main store result block ~ ~ ~ Items[{Slot:13b}].components."minecraft:custom_data".pc.shop_cost int 1 run data get storage pc:game shop.campfire.now.hpmax
item modify block ~ ~ ~ container.13 pc:money

execute if data storage pc:game {shop:{campfire:{is_sell:{epmax:true}}}} run loot replace block ~ ~ ~ container.15 loot pc:shop/campfire/epmax
execute store result score #money pc.main store result block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data".pc.shop_cost int 1 run data get storage pc:game shop.campfire.now.epmax
item modify block ~ ~ ~ container.15 pc:money