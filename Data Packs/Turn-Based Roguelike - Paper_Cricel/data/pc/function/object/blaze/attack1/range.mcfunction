
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {damage:30,text:[{translate:"pc.intent.attack+effect",font:"pc:intent"}],avail:{hole:1b}}
data modify storage pc:temp line set value {block:5,mode:"any"}
execute at @s rotated ~-45 0 run function pc:sys/grid/select/line
execute at @s run function pc:sys/grid/select/line
execute at @s rotated ~45 0 run function pc:sys/grid/select/line