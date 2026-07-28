
scoreboard players operation #self pc.origin.id = #intent.owner pc.entity.id
execute positioned ~-1.5 ~-100 ~-1.5 if entity @e[tag=pc.intent,predicate=sys:owner/origin,type=minecraft:marker,dx=2,dy=200,dz=2,limit=1] run return 1
return fail