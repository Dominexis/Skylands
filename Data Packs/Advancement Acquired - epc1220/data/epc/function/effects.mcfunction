#effect give @s minecraft:strength infinite 255 true
#effect give @s minecraft:night_vision infinite 255 true
#effect give @s minecraft:saturation infinite 255 true
#effect give @s minecraft:regeneration infinite 255 true

tellraw @a [{"text":"Position:","color":"aqua"},{"text":"[","color":"white"},{"color":"gold","entity":"@n[tag=testy]","nbt":"Pos[0]"},{"text":", ","color":"white"},{"color":"gold","entity":"@n[tag=testy]","nbt":"Pos[1]"},{"text":", ","color":"white"},{"color":"gold","entity":"@n[tag=testy]","nbt":"Pos[2]"},{"text":"]","color":"white"}]

tellraw @a [{"text":"Rotation:","color":"aqua"},{"text":"[","color":"white"},{"color":"gold","entity":"@n[tag=testy]","nbt":"Rotation[0]"},{"text":", ","color":"white"},{"color":"gold","entity":"@n[tag=testy]","nbt":"Rotation[1]"},{"text":"]","color":"white"}]