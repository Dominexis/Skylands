data remove storage pc:temp item
data modify storage pc:temp item.id set value 'basic'
data modify storage pc:temp item.category set value 'move'
data modify storage pc:temp item.ep.base set value 0
data modify storage pc:temp item.db.base set value 3

data modify storage pc:temp item.components."minecraft:item_model" set value 'minecraft:leather_boots'
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"item:move/basic"}
data modify storage pc:temp item.info set value []
