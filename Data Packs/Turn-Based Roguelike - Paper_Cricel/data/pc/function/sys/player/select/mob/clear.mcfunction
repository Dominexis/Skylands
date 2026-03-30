
# effect
scoreboard players reset @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.your_turn,predicate=sl:player] pc.selected_slot
tag @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent.now] remove pc.intent.now

execute as @n[type=!minecraft:player,distance=..100,tag=pc.select.object,predicate=pc:object/all] at @s run function pc:sys/player/select/mob/lookat/clear