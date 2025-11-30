
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.attack",font:"pc:intent"}]
execute facing entity @n[predicate=pc:object/ally,type=!player,distance=..100] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {damage:40,text:[{"translate":"pc.intent.attack+effect",font:"pc:intent"}]}
data modify storage pc:temp line set value {block:1,mode:any}
execute at @s run function pc:sys/grid/select/line