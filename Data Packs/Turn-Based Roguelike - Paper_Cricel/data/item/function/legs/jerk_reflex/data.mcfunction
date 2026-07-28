data remove storage pc:temp item
data modify storage pc:temp item.id set value 'jerk_reflex'
data modify storage pc:temp item.category set value 'legs'

data modify storage pc:temp item.item set value 'chainmail_leggings'
data modify storage pc:temp item.components set value {"minecraft:trim": {"pattern": "bolt", "material": "netherite"}}
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"item:legs/jerk_reflex"}
data modify storage pc:temp item.info set value [{id:'shield'}]
