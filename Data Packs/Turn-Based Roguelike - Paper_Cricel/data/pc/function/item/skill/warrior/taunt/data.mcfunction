data remove storage pc:temp item
data modify storage pc:temp item.id set value 'warrior/taunt'
data modify storage pc:temp item.category set value 'skill'
data modify storage pc:temp item.ep.base set value 1
data modify storage pc:temp item.db.base set value 4
data modify storage pc:temp item.combat.times set value 0

data modify storage pc:temp item.components."minecraft:item_model" set value 'minecraft:pufferfish'
data modify storage pc:temp item.sprite set value {atlas:"items",sprite:"item/pufferfish"}
data modify storage pc:temp item.info set value [{id:'vulnerable'},{id:'shield'}]
data modify storage pc:temp item.rarity set value 'common'
