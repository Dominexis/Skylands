
scoreboard players set $act.team pc.game 2
tag @e[predicate=!sys:entity/player,scores={pc.entity.ally=1}] add pc.turn.queue

execute if entity @e[tag=pc.turn.queue,scores={pc.entity.ally=1},limit=1] run return run function sys:combat/turn/ally/use
function sys:combat/turn/ally/clear