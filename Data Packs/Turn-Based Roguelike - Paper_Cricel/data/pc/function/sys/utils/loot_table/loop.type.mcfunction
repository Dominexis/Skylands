
# effect
tag @s add pc.temp
data modify entity @s data.loot set from storage pc:temp loot.type[0]
data remove storage pc:temp loot.type[0]

execute if data storage pc:temp loot.type[0] summon marker run function pc:sys/utils/loot_table/loop.type