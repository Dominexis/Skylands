
scoreboard players remove #slot_count pc.main 1

execute store result storage pc:utils loot.loot_count int 1 run scoreboard players get #loot_count pc.main
function sys:utils/loot/random/index with storage pc:utils loot
function sys:utils/loot/random/loots with storage pc:utils loot

execute if score #slot_count pc.main matches 1.. run function sys:utils/loot/random/loop