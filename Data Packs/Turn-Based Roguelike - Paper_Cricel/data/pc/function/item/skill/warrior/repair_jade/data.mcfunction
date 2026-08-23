data remove storage pc:temp item
data modify storage pc:temp item.id set value 'warrior/repair_jade'
data modify storage pc:temp item.category set value 'skill'
data modify storage pc:temp item.ep.base set value 0
data modify storage pc:temp item.db.base set value 3

data modify storage pc:temp item.components."minecraft:item_model" set value 'minecraft:emerald'
data modify storage pc:temp item.sprite set value {atlas:"items",sprite:"item/emerald"}
data modify storage pc:temp item.info set value [{id:'strength'}]
data modify storage pc:temp item.rarity set value 'common'
