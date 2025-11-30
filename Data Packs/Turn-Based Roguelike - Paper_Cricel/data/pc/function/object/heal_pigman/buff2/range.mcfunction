
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.effect",font:"pc:intent"}]
execute facing entity @n[predicate=pc:object/mob,type=!player,type=!player,distance=..100] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {text:[{"translate":"pc.intent.effect",font:"pc:intent"}]}
function pc:sys/grid/select/any1x1
function pc:sys/grid/select/any1x1d