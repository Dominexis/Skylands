
# effect
data modify storage pc:temp loot.slot append from storage pc:temp slot_tolist[0].slot
data remove storage pc:temp slot_tolist[0]

execute if data storage pc:temp slot_tolist[0] run return run function pc:sys/game/rest_area/trader/restock/slot_tolist

data remove storage pc:temp slot_tolist