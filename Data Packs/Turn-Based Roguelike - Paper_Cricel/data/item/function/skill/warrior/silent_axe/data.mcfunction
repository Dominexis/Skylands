data remove storage pc:temp item
data modify storage pc:temp item.id set value 'warrior/silent_axe'
data modify storage pc:temp item.category set value 'skill'
data modify storage pc:temp item.ep.base set value 2
data modify storage pc:temp item.db.base set value 4

data modify storage pc:temp item.components."minecraft:item_model" set value 'minecraft:netherite_axe'
data modify storage pc:temp item.sprite set value {atlas:"items",sprite:"item/netherite_axe"}
data modify storage pc:temp item.info set value [{id:'vulnerable'}]
data modify storage pc:temp item.rarity set value 'rare'
