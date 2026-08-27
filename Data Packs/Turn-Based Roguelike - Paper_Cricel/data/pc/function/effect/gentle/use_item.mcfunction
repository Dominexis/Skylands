
execute if data storage pc:temp passive.current{buffer:1b} run return run data remove storage pc:temp passive.current.buffer

scoreboard players set #dbcost pc.main 0
function pc:sys/effect/descent

# fx
function pc:effect/gentle/fx_wearoff