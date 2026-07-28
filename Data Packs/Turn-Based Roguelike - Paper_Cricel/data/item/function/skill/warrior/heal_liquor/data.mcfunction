data remove storage pc:temp item
data modify storage pc:temp item.id set value 'warrior/heal_liquor'
data modify storage pc:temp item.category set value 'skill'
data modify storage pc:temp item.ep.base set value 2
data modify storage pc:temp item.db.base set value 1

data modify storage pc:temp item.components set value {"minecraft:potion_contents": {"custom_color": 16483071},"minecraft:item_model":'minecraft:potion'}
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"item:skill/heal_liquor"}
data modify storage pc:temp item.info set value [{id:'misery'},{id:'vigor'}]
data modify storage pc:temp item.rarity set value 'rare'
