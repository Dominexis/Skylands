
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.walk",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread90

data modify storage pc:temp intent set value {is_walk:1b,text:[{translate:"pc.intent.walk",font:"pc:intent"}],facing:1b}
data modify storage pc:temp nearest set value {object:"ally"}
function pc:sys/grid/select/nearest