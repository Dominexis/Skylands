
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.attack+effect",font:"pc:intent"}]
execute facing entity @n[predicate=pc:object/ally,type=!player,distance=..100] eyes run function pc:sys/object/rotate/proofread90

data modify storage pc:temp intent set value {damage:20,text:[{"translate":"pc.intent.attack+effect",font:"pc:intent"}],id:"inner"}
function pc:sys/grid/select/any3x3

data modify storage pc:temp intent set value {damage:10,text:[{"translate":"pc.intent.attack+effect",font:"pc:intent"}],id:"outter"}
function pc:sys/grid/select/any5x5