
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.walk",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {is_walk:1b,text:[{translate:"pc.intent.walk",font:"pc:intent"}],avail:{hole:1b},facing:1b}
data modify storage pc:temp nearest set value {block:2,object:"ally",can_diagonal:1b,unhindered:1b}
function pc:sys/grid/select/nearest