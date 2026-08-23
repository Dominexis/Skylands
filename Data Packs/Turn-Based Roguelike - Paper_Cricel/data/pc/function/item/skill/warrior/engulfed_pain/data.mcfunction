data remove storage pc:temp item
data modify storage pc:temp item.id set value 'warrior/engulfed_pain'
data modify storage pc:temp item.category set value 'skill'
data modify storage pc:temp item.ep.base set value 2
data modify storage pc:temp item.db.base set value 2

data modify storage pc:temp item.components."minecraft:item_model" set value 'minecraft:crimson_roots'
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"pc:item/skill/engulfed_pain"}
data modify storage pc:temp item.info set value [{id:'vulnerable'},{id:'nxn'}]
data modify storage pc:temp item.rarity set value 'epic'
