data modify block 3328 50 -2304 Items[0] set value {"components":{ \
    "tooltip_display":{hidden_components:["enchantments"]}, \
    "minecraft:enchantments":{"minecraft:mending":1}, \
    "minecraft:custom_data":{"collectible":"fighter_hunter","color":"[0.8,0.6,0.45]","price_tier":3}, \
    "minecraft:item_name":{"bold":true,"color":"gold","italic":false,"text":"Fighter Instinct"}, \
    "minecraft:lore":[{"color":"light_purple","italic":false,"text":"+3 Melee Damage"},{"color":"white","italic":false,"text":"⬈ Next time you complete a wave, swap"},{"color":"white","italic":false,"text":"this relic with \"Hunter Instinct\"."}]}, \
    "id":"minecraft:blade_pottery_sherd"}

execute if score @s synb.Item.fighter_hunter.swap matches 1 run \
data modify block 3328 50 -2304 Items[0] set value {"components":{ \
    "tooltip_display":{hidden_components:["enchantments"]}, \
    "minecraft:enchantments":{"minecraft:mending":1}, \
    "minecraft:custom_data":{"collectible":"fighter_hunter","color":"[0.8,0.6,0.45]","price_tier":3}, \
    "minecraft:item_name":{"bold":true,"color":"gold","italic":false,"text":"Hunter Instinct"}, \
    "minecraft:lore":[{"color":"light_purple","italic":false,"text":"+3 Ranged Damage"},{"color":"white","italic":false,"text":"⬈ Next time you complete a wave, swap"},{"color":"white","italic":false,"text":"this relic with \"Fighter Instinct\"."}]}, \
    "id":"minecraft:archer_pottery_sherd"}