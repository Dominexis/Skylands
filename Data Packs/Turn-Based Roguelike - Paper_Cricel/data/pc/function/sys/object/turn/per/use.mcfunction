
tag @s remove pc.your_turn.queue
tag @s add pc.object.now
tag @s add pc.sys.atker
scoreboard players set $game.acting_time pc.main 1

scoreboard players operation #this pc.object_id = @s pc.object_id
execute as @e[type=marker,tag=pc.intent,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if score @s pc.object_id = #this pc.object_id at @s positioned ~-1.5 ~-100 ~-1.5 run function pc:sys/object/turn/per/2

function pc:sys/object/turn/per/3 with entity @s data.intent

# fx
function pc:sys/object/intent/icon/self/clear