
# effect
scoreboard players operation #this pc.object_id = @e[type=!minecraft:player,distance=..100,tag=pc.grid.selector,limit=1] pc.object_id
execute positioned ~-1.5 ~-100 ~-1.5 as @e[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.intent] if score @s pc.object_id = #this pc.object_id run return 1
return fail

# fx