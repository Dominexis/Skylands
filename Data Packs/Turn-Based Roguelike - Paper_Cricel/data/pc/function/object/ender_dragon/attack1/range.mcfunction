
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread90

data modify storage pc:temp intent set value {damage:60,text:["x2",{translate:"pc.intent.attack",font:"pc:intent"}],id:["blade1","blade2"]}
execute at @s positioned ^ ^ ^4 run function pc:sys/grid/select/any

data modify storage pc:temp intent set value {damage:60,text:[{translate:"pc.intent.attack",font:"pc:intent"}],id:["blade1"]}
execute at @s positioned ^4 ^ ^4 run function pc:sys/grid/select/any
execute at @s positioned ^-4 ^ ^4 run function pc:sys/grid/select/any
execute at @s positioned ^8 ^ ^4 run function pc:sys/grid/select/any
execute at @s positioned ^-8 ^ ^4 run function pc:sys/grid/select/any

data modify storage pc:temp intent set value {damage:60,text:[{translate:"pc.intent.attack",font:"pc:intent"}],id:["blade2"]}
data modify storage pc:temp line set value {block:8,mode:"any",unhindered:1b}
execute at @s run function pc:sys/grid/select/line
data modify storage pc:temp intent set value {damage:10,text:[{translate:"pc.intent.attack",font:"pc:intent"}],id:["blade2"]}
execute at @s positioned ^4 ^ ^ run function pc:sys/grid/select/line
execute at @s positioned ^-4 ^ ^ run function pc:sys/grid/select/line