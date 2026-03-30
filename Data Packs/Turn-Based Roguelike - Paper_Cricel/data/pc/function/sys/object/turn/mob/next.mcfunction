
# effect
execute if entity @n[predicate=pc:object/mob,type=!player,tag=pc.your_turn.queue,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run schedule function pc:sys/object/turn/mob/use 1s
execute unless entity @n[predicate=pc:object/mob,type=!player,tag=pc.your_turn.queue,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run schedule function pc:sys/object/turn/mob/clear 1s