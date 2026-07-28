data remove storage pc:temp item
data modify storage pc:temp item.id set value 'curious'
data modify storage pc:temp item.category set value 'repair'
data modify storage pc:temp item.ep.base set value 1
data modify storage pc:temp item.db.base set value 2
data modify storage pc:temp item.combat set value {hpmax:6}

data modify storage pc:temp item.components."minecraft:item_model" set value 'item:repair/curious'
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"item:repair/curious"}
data modify storage pc:temp item.info set value [{id:'anvil'},{id:'strength'},{id:'n-cross'}]
