
tag @s add pc.atker
tag @s remove pc.turn.queue
scoreboard players set @s pc.entity.inturn 1

scoreboard players operation #self pc.origin.id = @s pc.entity.id
tag @e[tag=pc.intent,predicate=sys:owner/origin,type=minecraft:marker] add pc.intent.now

function sys:utils/passive/use {passive:"new_turn"}
function sys:combat/turn/entity/2

function sys:entity/intent/icon/self/clear