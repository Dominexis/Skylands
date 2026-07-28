data remove storage pc:temp item
data modify storage pc:temp item.id set value 'entrench'
data modify storage pc:temp item.category set value 'chest'
data modify storage pc:temp item.combat set value {times:0}

data modify storage pc:temp item.item set value 'leather_chestplate'
data modify storage pc:temp item.components set value {}
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"item:chest/entrench"}
data modify storage pc:temp item.info set value [{id:'shield'}]
