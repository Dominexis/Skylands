
execute store result score #var pc.main run data get storage pc:temp item.processed_modifiers[0].value
scoreboard players operation #base pc.main < #var pc.main

data remove storage pc:temp item.processed_modifiers[0]
execute if data storage pc:temp item.processed_modifiers[0] run function pc:sys/item/db/modifiers/set/loop