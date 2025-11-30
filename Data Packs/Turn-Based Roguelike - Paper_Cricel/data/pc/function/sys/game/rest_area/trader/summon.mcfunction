
# effect
data merge entity @s {Tags:["pc.rest_area","pc.rest_area.trader"],NoAI:1b,Invulnerable:1b,CustomNameVisible:1b}
setblock ~ ~1 ~ minecraft:air
setblock ~ ~1 ~ minecraft:purple_shulker_box[facing=up]
setblock ~ ~ ~ minecraft:barrier

# Settings
data modify block ~ ~1 ~ CustomName set from storage pc:game shop.trader.name
data modify entity @s data set from storage pc:game shop.trader.items

data modify entity @s CustomName set from storage pc:game shop.trader.name
data modify entity @s Rotation[0] set from storage pc:game shop.trader.rotation
data modify entity @s equipment.head set from storage pc:game shop.trader.skin.head
data modify entity @s VillagerData.profession set from storage pc:game shop.trader.skin.profession
data modify entity @s VillagerData.type set from storage pc:game shop.trader.skin.type

execute positioned ~ ~1 ~ run function pc:sys/item/show_feature/tip_item/use