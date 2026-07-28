data remove storage pc:temp item
data modify storage pc:temp item.id set value 'residual_defense'
data modify storage pc:temp item.category set value 'legs'

data modify storage pc:temp item.item set value 'leather_leggings'
data modify storage pc:temp item.components set value {"minecraft:trim": {"pattern": "eye", "material": "diamond"}}
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"item:legs/residual_defense"}
data modify storage pc:temp item.info set value [{id:'shield'}]
