
scoreboard players operation #intent.owner pc.entity.id = @s pc.entity.id

$function pc:entity/$(id)/$(intent)/range

scoreboard players operation #self pc.origin.id = @s pc.entity.id
tag @e[tag=pc.intent.now,predicate=pc:sys/owner/origin,type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.intent.now