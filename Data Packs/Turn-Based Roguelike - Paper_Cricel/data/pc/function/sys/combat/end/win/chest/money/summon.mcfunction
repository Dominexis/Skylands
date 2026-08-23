
execute store result storage pc:temp loot.money int 1 run function pc:sys/combat/end/win/chest/money/2
loot replace block ~ ~ ~ container.22 loot pc:sys/option/money

data modify storage pc:temp loot.PosX set from block ~ ~ ~ x
data modify storage pc:temp loot.PosY set from block ~ ~ ~ y
data modify storage pc:temp loot.PosZ set from block ~ ~ ~ z
function pc:sys/combat/end/win/chest/money/3 with storage pc:temp loot

data remove storage pc:temp loot