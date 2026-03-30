
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.walk+effect",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread90

data modify storage pc:temp intent set value {is_walk:1b,text:[{translate:"pc.intent.walk",font:"pc:intent"}]}
data modify storage pc:temp nearest set value {object:"ally"}
function pc:sys/grid/select/nearest

data modify storage pc:temp intent set value {text:[{translate:"pc.intent.effect",font:"pc:intent"}]}
execute positioned ^ ^ ^4 run function pc:sys/grid/select/any3x3