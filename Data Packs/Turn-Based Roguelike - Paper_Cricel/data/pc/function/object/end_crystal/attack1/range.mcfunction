
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack",font:"pc:intent"}]

data modify storage pc:temp intent set value {damage:60,text:[{translate:"pc.intent.attack",font:"pc:intent"}]}
execute at @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] run function pc:sys/grid/select/ally