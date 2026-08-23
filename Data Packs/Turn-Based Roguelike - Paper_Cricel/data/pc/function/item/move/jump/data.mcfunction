data remove storage pc:temp item
data modify storage pc:temp item.id set value 'jump'
data modify storage pc:temp item.category set value 'move'
data modify storage pc:temp item.ep.base set value 0
data modify storage pc:temp item.db.base set value 3

data modify storage pc:temp item.components."minecraft:item_model" set value 'minecraft:rabbit_foot'
data modify storage pc:temp item.sprite set value {atlas:"items",sprite:"item/rabbit_foot"}
data modify storage pc:temp item.info set value [{id:'critical_hit'}]
