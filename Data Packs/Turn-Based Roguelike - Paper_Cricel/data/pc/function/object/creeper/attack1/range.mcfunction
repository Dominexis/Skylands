
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread90

data modify storage pc:temp intent set value {damage:200,text:[{translate:"pc.intent.attack",font:"pc:intent"}]}
function pc:sys/grid/select/any
function pc:sys/grid/select/any1x1

data modify storage pc:temp intent set value {damage:100,text:[{translate:"pc.intent.attack",font:"pc:intent"}]}
function pc:sys/grid/select/any3x3

data modify storage pc:temp intent set value {damage:30,text:[{translate:"pc.intent.attack",font:"pc:intent"}]}
function pc:sys/grid/select/any5x5