data remove storage pc:temp item
data modify storage pc:temp item.id set value 'energy_surge'
data modify storage pc:temp item.category set value 'feet'

data modify storage pc:temp item.item set value 'leather_boots'
data modify storage pc:temp item.components set value {"minecraft:trim": {"pattern": "snout", "material": "amethyst"}, "minecraft:dyed_color": 5448317}
data modify storage pc:temp item.sprite set value {atlas:"gui",sprite:"pc:item/feet/energy_surge"}
data modify storage pc:temp item.info set value [{id:'nxn'}]

data modify storage pc:temp item.combat.this_turn set from storage pc:lang sys.lore.untriggered
