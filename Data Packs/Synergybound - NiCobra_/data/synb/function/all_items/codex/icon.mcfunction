scoreboard players set #progress synb.Tmp.Expr -1
scoreboard players operation #progress synb.Tmp.Expr = @s[type=minecraft:player] synb.Item.codex.dmg_count

execute unless entity @s[tag=synb.Item.codex.completed] if score #progress synb.Tmp.Expr matches -1 run \
data modify block 3328 50 -2304 Items[0] set value {"components":{ \
    "tooltip_display":{hidden_components:["enchantments"]}, \
    "minecraft:custom_data":{"collectible":"codex","color":"[0.7,0.7,0.7]","price_tier":1}, \
    "minecraft:item_name":{"bold":true,"color":"white","italic":false,"text":"Blank Codex"}, \
    "minecraft:lore":[{"color":"aqua","italic":false,"text":"+1 Magic"},{"color":"white","italic":false,"text":"⬈ After dealing 500 total damage from"},{"color":"white","italic":false,"text":"arrows or relics, this relic transforms"},{"color":"white","italic":false,"text":"into \"Complete Codex\"."},{"color":"gray","italic":false,"text":"Overflow damage counts."}]}, \
    "id":"minecraft:book"}

execute store result storage synb.d:tmp args.dmg_count int 0.001 run scoreboard players get #progress synb.Tmp.Expr
execute unless entity @s[tag=synb.Item.codex.completed] if score #progress synb.Tmp.Expr matches 0.. run function synb:all_items/codex/_icon_updated with storage synb.d:tmp args

execute if entity @s[tag=synb.Item.codex.completed] run \
data modify block 3328 50 -2304 Items[0] set value {"components":{ \
    "tooltip_display":{hidden_components:["enchantments"]}, \
    "minecraft:enchantments":{"minecraft:mending":1}, \
    "minecraft:custom_data":{"collectible":"codex","color":"[0.7,0.7,0.7]","price_tier":4}, \
    "minecraft:item_name":{"bold":true,"color":"white","italic":false,"text":"Complete Codex"}, \
    "minecraft:lore":[{"color":"light_purple","italic":false,"text":"+4 Magic"}]}, \
    "id":"minecraft:enchanted_book"}