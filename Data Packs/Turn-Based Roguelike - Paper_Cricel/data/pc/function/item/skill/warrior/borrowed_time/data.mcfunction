data remove storage pc:temp item
data modify storage pc:temp item.id set value 'warrior/borrowed_time'
data modify storage pc:temp item.category set value 'skill'
data modify storage pc:temp item.ep.base set value 0
data modify storage pc:temp item.db.base set value 1

data modify storage pc:temp item.components."minecraft:item_model" set value 'minecraft:black_bundle'
data modify storage pc:temp item.sprite set value {atlas:"items",sprite:"item/black_bundle"}
data modify storage pc:temp item.info set value []
data modify storage pc:temp item.rarity set value 'epic'
