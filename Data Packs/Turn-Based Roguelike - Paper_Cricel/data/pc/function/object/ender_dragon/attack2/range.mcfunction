
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.attack+effect",font:"pc:intent"}]
execute facing entity @n[predicate=pc:object/ally,type=!player,distance=..100] eyes run function pc:sys/object/rotate/proofread90

data modify storage pc:temp intent set value {damage:40,text:[{"translate":"pc.intent.attack+effect",font:"pc:intent"}],id:[knockback,attack]}
function pc:sys/grid/select/any3x3

data modify storage pc:temp intent set value {damage:40,text:[{"translate":"pc.intent.attack",font:"pc:intent"}],id:[attack]}
function pc:sys/grid/select/any5x5