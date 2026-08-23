data remove storage pc:temp item
data modify storage pc:temp item.id set value 'footwork'
data modify storage pc:temp item.category set value 'feet'
data modify storage pc:temp item.combat set value {times:0}

data modify storage pc:temp item.item set value 'leather_boots'
data modify storage pc:temp item.components set value {"minecraft:trim": {"pattern": "raiser", "material": "emerald"}}
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"pc:item/feet/footwork"}
data modify storage pc:temp item.info set value []
