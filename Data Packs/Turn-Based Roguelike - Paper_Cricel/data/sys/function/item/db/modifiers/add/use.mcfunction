
data modify storage pc:temp item.processed_modifiers set from storage pc:temp item.modifiers

function sys:item/db/modifiers/add/loop with storage pc:temp item.processed_modifiers[0]

data remove storage pc:temp item.processed_modifiers