
data modify storage pc:utils loot.curr.slot set from storage pc:utils loot.slots[0]
data modify storage pc:utils loot.curr.loot set from storage pc:utils loot.loots[0]

function sys:utils/loot/summon/2 with storage pc:utils loot.curr

data remove storage pc:utils loot.slots[0]
data remove storage pc:utils loot.loots[0]

execute if data storage pc:utils loot.slots[0] if data storage pc:utils loot.loots[0] run function sys:utils/loot/summon/loop