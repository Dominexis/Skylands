
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread90

data modify storage pc:temp intent set value {damage:50,text:["x2",{translate:"pc.intent.attack",font:"pc:intent"}]}
function pc:sys/grid/select/any3x3

data modify storage pc:temp intent set value {damage:10,text:["x2",{translate:"pc.intent.attack",font:"pc:intent"}]}
function pc:sys/grid/select/any5x5