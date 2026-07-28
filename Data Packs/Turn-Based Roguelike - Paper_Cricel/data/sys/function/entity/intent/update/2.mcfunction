
scoreboard players operation #intent.owner pc.entity.id = @s pc.entity.id

$function entity:$(id)/$(intent)/range

scoreboard players operation #self pc.origin.id = @s pc.entity.id
tag @e[tag=pc.intent.now,predicate=sys:owner/origin,type=minecraft:marker] remove pc.intent.now