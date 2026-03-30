
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.effect",font:"pc:intent"}]
execute facing entity @n[predicate=pc:object/ally,type=!player,distance=..100] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {text:[{"translate":"pc.intent.effect",font:"pc:intent"}],avail:{hole:true}}
data modify storage pc:temp line set value {block:3,mode:any}
execute at @s run function pc:sys/grid/select/line