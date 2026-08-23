
scoreboard players set $act.team pc.game 2
tag @e[predicate=!pc:sys/entity/player,scores={pc.entity.ally=1},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] add pc.turn.queue

execute if entity @e[tag=pc.turn.queue,scores={pc.entity.ally=1},limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run return run function pc:sys/combat/turn/ally/use
function pc:sys/combat/turn/ally/clear