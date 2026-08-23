data remove storage pc:temp item
data modify storage pc:temp item.id set value 'vigilance'
data modify storage pc:temp item.category set value 'feet'
data modify storage pc:temp item.combat set value {count:0}

data modify storage pc:temp item.item set value 'diamond_boots'
data modify storage pc:temp item.components set value {"minecraft:trim": {"pattern": "flow", "material": "resin"}}
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"pc:item/feet/vigilance"}
data modify storage pc:temp item.info set value [{id:'vigor'},{id:'n-cross'}]
