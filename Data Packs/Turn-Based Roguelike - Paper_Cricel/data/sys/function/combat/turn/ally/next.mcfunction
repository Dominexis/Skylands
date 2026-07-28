
execute if entity @e[tag=pc.turn.queue,predicate=sys:entity/ally,limit=1] run return run function sys:combat/turn/ally/use
function sys:combat/turn/ally/clear