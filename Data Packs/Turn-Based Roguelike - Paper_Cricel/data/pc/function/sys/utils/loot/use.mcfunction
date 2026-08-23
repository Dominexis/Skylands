## usage : generate loots randomly, non-repeatable
## (storage) pc:utils loot {loot_table:["skill/training_sword","..."], slots:["0","1","2"]}

execute store result score #slot_count pc.main if data storage pc:utils loot.slots[]
execute store result score #loot_count pc.main if data storage pc:utils loot.loot_table[]
scoreboard players remove #loot_count pc.main 1

data modify storage pc:utils loot.curr.PosX set from block ~ ~ ~ x
data modify storage pc:utils loot.curr.PosY set from block ~ ~ ~ y
data modify storage pc:utils loot.curr.PosZ set from block ~ ~ ~ z

function pc:sys/utils/loot/random/loop
function pc:sys/utils/loot/summon/loop

data remove storage pc:utils loot