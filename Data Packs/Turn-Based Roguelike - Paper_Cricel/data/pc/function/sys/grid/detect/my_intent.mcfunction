
# effect
scoreboard players operation #this pc.object_id = @e[type=!player,tag=pc.grid.selector,distance=..100,limit=1] pc.object_id
execute positioned ~-1.5 ~-100 ~-1.5 as @e[type=marker,tag=pc.intent,dx=2,dy=200,dz=2] if score @s pc.object_id = #this pc.object_id run return 1
return fail

# fx