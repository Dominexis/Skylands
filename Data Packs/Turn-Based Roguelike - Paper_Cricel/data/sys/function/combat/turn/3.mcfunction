
scoreboard players set $act.team pc.game 3
tag @e[scores={pc.entity.enemy=1}] add pc.turn.queue

execute if entity @e[tag=pc.turn.queue,scores={pc.entity.enemy=1},limit=1] run return run function sys:combat/turn/enemy/use
function sys:combat/turn/enemy/clear