
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.effect",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,type=!minecraft:player,distance=..100,predicate=pc:object/mob] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {text:[{translate:"pc.intent.effect",font:"pc:intent"}]}
function pc:sys/grid/select/any1x1
function pc:sys/grid/select/any1x1d