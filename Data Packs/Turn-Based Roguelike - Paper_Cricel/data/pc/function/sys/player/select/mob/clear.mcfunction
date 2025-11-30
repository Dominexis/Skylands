
# effect
scoreboard players reset @p[predicate=sl:player,tag=pc.your_turn,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.selected_slot
tag @e[type=marker,tag=pc.intent.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.intent.now

execute as @n[predicate=pc:object/all,type=!player,tag=pc.select.object,distance=..100] at @s run function pc:sys/player/select/mob/lookat/clear