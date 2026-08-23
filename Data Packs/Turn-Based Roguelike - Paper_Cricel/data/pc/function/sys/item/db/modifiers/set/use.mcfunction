
data modify storage pc:temp item.processed_modifiers append from storage pc:temp item.modifiers[{operation:""}]
scoreboard players set #base pc.main 2147483647

function pc:sys/item/db/modifiers/set/loop

data remove storage pc:temp item.processed_modifiers