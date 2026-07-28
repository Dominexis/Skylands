data remove storage pc:temp item
data modify storage pc:temp item.id set value 'min_passion'
data modify storage pc:temp item.category set value 'head'
data modify storage pc:temp item.combat set value {turn:0}

data modify storage pc:temp item.item set value 'golden_helmet'
data modify storage pc:temp item.components set value {"minecraft:trim": {"pattern": "raiser", "material": "lapis"}}
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"item:head/min_passion"}
data modify storage pc:temp item.info set value [{id:'strength'}]
