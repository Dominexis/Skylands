data remove storage pc:temp item
data modify storage pc:temp item.id set value 'warrior/biased_force'
data modify storage pc:temp item.category set value 'skill'
data modify storage pc:temp item.ep.base set value 1
data modify storage pc:temp item.db.base set value 1

data modify storage pc:temp item.components set value {"minecraft:potion_contents":{custom_color:16433495},"minecraft:item_model":"minecraft:potion"}
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"pc:item/skill/biased_force"}
data modify storage pc:temp item.info set value [{id:'strength'}]
data modify storage pc:temp item.rarity set value 'rare'
