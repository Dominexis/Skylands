
# effect
execute if entity @n[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.your_turn.queue,predicate=pc:object/ally] run schedule function pc:sys/object/turn/ally/use 1s
execute unless entity @n[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.your_turn.queue,predicate=pc:object/ally] run schedule function pc:sys/object/turn/ally/clear 1s