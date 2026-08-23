data remove storage pc:temp item
data modify storage pc:temp item.id set value 'repair_core'
data modify storage pc:temp item.category set value 'chest'
data modify storage pc:temp item.combat set value {count:0}

data modify storage pc:temp item.item set value 'iron_chestplate'
data modify storage pc:temp item.components set value {"minecraft:trim": {"pattern": "eye", "material": "resin"}}
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"pc:item/chest/repair_core"}
data modify storage pc:temp item.info set value [{id:'strength'}]
