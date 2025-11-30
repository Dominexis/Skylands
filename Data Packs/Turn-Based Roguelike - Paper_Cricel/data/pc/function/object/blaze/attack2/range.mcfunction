
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack+effect",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,type=!minecraft:player,distance=..100,predicate=pc:object/mob] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {text:[{translate:"pc.intent.attack+effect",font:"pc:intent"}],id:"3x3"}
function pc:sys/grid/select/any3x3

data modify storage pc:temp intent set value {text:[{translate:"pc.intent.attack+effect",font:"pc:intent"}],id:"5x5"}
function pc:sys/grid/select/any5x5

scoreboard players operation #self pc.object_id = @s pc.object_id
execute positioned ~-1.5 ~-100 ~-1.5 as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent] if score @s pc.object_id = #self pc.object_id if entity @s[dx=2,dy=200,dz=2] run kill @s