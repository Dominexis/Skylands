
# effect
scoreboard players reset #turn.mobs_turn pc.main
tag @e[predicate=pc:object/all,type=!player,tag=!pc.player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] add pc.your_turn.queue

execute if entity @e[predicate=pc:object/ally,type=!player,tag=pc.your_turn.queue,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/object/turn/ally/next
execute unless entity @e[predicate=pc:object/ally,type=!player,tag=pc.your_turn.queue,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/object/turn/ally/clear