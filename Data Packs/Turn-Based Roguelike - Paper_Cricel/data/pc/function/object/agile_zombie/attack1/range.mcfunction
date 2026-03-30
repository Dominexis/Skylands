
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread90

data modify storage pc:temp intent set value {damage:40,text:[{translate:"pc.intent.attack",font:"pc:intent"}]}
execute at @s rotated ~0 0 positioned ^ ^ ^4 run function pc:sys/grid/select/any

data modify storage pc:temp intent set value {damage:20,text:[{translate:"pc.intent.attack",font:"pc:intent"}]}
execute at @s rotated ~90 0 positioned ^ ^ ^4 run function pc:sys/grid/select/any
execute at @s rotated ~-90 0 positioned ^ ^ ^4 run function pc:sys/grid/select/any