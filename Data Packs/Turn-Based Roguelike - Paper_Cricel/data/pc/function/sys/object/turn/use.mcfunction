
# effect
scoreboard players reset #turn.mobs_turn pc.main
tag @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=!pc.player,predicate=pc:object/all] add pc.your_turn.queue

execute if entity @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.your_turn.queue,limit=1,predicate=pc:object/ally] run function pc:sys/object/turn/ally/next
execute unless entity @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.your_turn.queue,limit=1,predicate=pc:object/ally] run function pc:sys/object/turn/ally/clear