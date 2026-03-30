
scoreboard players operation #this pc.object_id = @s pc.object_id
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent] if score @s pc.object_id = #this pc.object_id at @s run function pc:void