
$scoreboard players set #var pc.main $(value)
$scoreboard players operation #base pc.main $(operation)= #var pc.main

data remove storage pc:temp item.processed_modifiers[0]
execute if data storage pc:temp item.processed_modifiers[0] run function sys:item/db/modifiers/add/loop with storage pc:temp item.processed_modifiers[0]