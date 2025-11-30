
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.attack+effect",font:"pc:intent"}]
execute facing entity @n[predicate=pc:object/ally,type=!player,distance=..100] eyes run function pc:sys/object/rotate/proofread90

data modify storage pc:temp intent set value {damage:50,text:[{"translate":"pc.intent.attack+effect",font:"pc:intent"}]}
execute at @s rotated ~0 0 positioned ^ ^ ^4 run function pc:sys/grid/select/any

data modify storage pc:temp intent set value {damage:30,text:[{"translate":"pc.intent.attack+effect",font:"pc:intent"}]}
execute at @s rotated ~90 0 positioned ^ ^ ^4 run function pc:sys/grid/select/any
execute at @s rotated ~-90 0 positioned ^ ^ ^4 run function pc:sys/grid/select/any