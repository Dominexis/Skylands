data remove storage pc:temp item
data modify storage pc:temp item.id set value 'gold_greed'
data modify storage pc:temp item.category set value 'head'

data modify storage pc:temp item.item set value 'netherite_helmet'
data modify storage pc:temp item.components set value {"minecraft:trim": {"pattern": "shaper", "material": "gold"}}
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"item:head/gold_greed"}
data modify storage pc:temp item.info set value [{id:'minion'}]
