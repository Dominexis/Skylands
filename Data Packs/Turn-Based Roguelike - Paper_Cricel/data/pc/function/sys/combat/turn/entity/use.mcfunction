
tag @s add pc.atker
tag @s remove pc.turn.queue
scoreboard players set @s pc.entity.inturn 1

scoreboard players operation #self pc.origin.id = @s pc.entity.id
tag @e[tag=pc.intent,predicate=pc:sys/owner/origin,type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] add pc.intent.now

function pc:sys/utils/passive/use {passive:"new_turn"}
function pc:sys/combat/turn/entity/2

function pc:sys/entity/intent/icon/self/clear