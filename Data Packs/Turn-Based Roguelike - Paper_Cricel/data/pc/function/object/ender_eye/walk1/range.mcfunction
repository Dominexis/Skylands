
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.walk+effect",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {text:[{translate:"pc.intent.effect",font:"pc:intent"}]}
function pc:sys/grid/select/any

data modify storage pc:temp intent set value {is_walk:1b,text:[{translate:"pc.intent.walk",font:"pc:intent"}]}
function pc:sys/grid/select/any_all