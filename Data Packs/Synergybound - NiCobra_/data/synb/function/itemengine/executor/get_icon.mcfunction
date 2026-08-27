# /!\ Uncompiled
# Args :
#   - icon_item_id (macro)
##

data modify block 3328 50 -2304 Items[0] set value {"components":{ \
    "minecraft:custom_data":{"collectible":"_error","color":"[1.0,0.0,0.0]"}, \
    "minecraft:item_name":[{"bold":true,"color":"red","italic":false,"text":"Error"}], \
    "minecraft:lore":[{"color":"red","italic":false,"text":"Incorrect item."}]}, \
    "id":"minecraft:barrier"}
$function synb:all_items/$(icon_item_id)/icon