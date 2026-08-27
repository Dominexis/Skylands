
execute if entity @e[tag=pc.turn.queue,scores={pc.entity.enemy=1},limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run return run function pc:sys/combat/turn/enemy/use
function pc:sys/combat/turn/enemy/clear