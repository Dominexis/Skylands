
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.walk",font:"pc:intent"}]
execute facing entity @n[predicate=pc:object/ally,type=!player,distance=..100] eyes rotated ~180 0 run function pc:sys/object/rotate/proofread90

data modify storage pc:temp intent set value {is_walk:true,text:[{"translate":"pc.intent.walk",font:"pc:intent"}]}
data modify storage pc:temp line set value {block:1,mode:any}
execute at @s run function pc:sys/grid/select/line