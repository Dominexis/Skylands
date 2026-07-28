
execute if data storage pc:temp passive.current{buffer:1b} run return run data remove storage pc:temp passive.current.buffer

scoreboard players set #dbcost pc.main 0
function sys:effect/descent

# fx
function effect:gentle/fx_wearoff