data remove storage pc:temp item
data modify storage pc:temp item.id set value 'warrior/hemorrhage'
data modify storage pc:temp item.category set value 'skill'
data modify storage pc:temp item.ep.base set value 1
data modify storage pc:temp item.db.base set value 4

data modify storage pc:temp item.components set value {"minecraft:potion_contents": {"custom_color": 13714998},"minecraft:item_model":'minecraft:tipped_arrow'}
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"item:skill/hemorrhage"}
data modify storage pc:temp item.info set value [{id:'vulnerable'},{id:'n-cross'}]
data modify storage pc:temp item.rarity set value 'common'
