# As? : player
# Args? :
#   - generic_player_src (tag ctx)
##

data modify block 3328 50 -2304 Items[0] set value {"components":{ \
    "tooltip_display":{hidden_components:["enchantments"]}, \
    "minecraft:enchantments":{"minecraft:mending":1}, \
    "minecraft:custom_data":{"collectible":"_debug","color":"[1.0,1.0,1.0]","price_tier":0}, \
    "minecraft:item_name":{"bold":true,"color":"white","italic":false,"text":"Debug Item"}, \
    "minecraft:lore":[{"color":"aqua","italic":false,"text":"+ Big stats"}]}, \
    "id":"minecraft:command_block_minecart"}