
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack+walk",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {damage:60,text:[{translate:"pc.intent.attack+walk",font:"pc:intent"}],id:["walk"]}
data modify storage pc:temp line set value {block:5,mode:"any",unhindered:1b}
execute at @s run function pc:sys/grid/select/line

data modify storage pc:temp intent set value {damage:10,text:[{translate:"pc.intent.attack",font:"pc:intent"}],id:["wave"]}
data modify storage pc:temp line set value {block:5,mode:"any",unhindered:1b}
execute unless entity @s[tag=pc.sys.rotate_diagonal] at @s positioned ^4 ^ ^ run function pc:sys/grid/select/line
execute unless entity @s[tag=pc.sys.rotate_diagonal] at @s positioned ^-4 ^ ^ run function pc:sys/grid/select/line
execute if entity @s[tag=pc.sys.rotate_diagonal] at @s positioned ^5.656 ^ ^ run function pc:sys/grid/select/line
execute if entity @s[tag=pc.sys.rotate_diagonal] at @s positioned ^-5.656 ^ ^ run function pc:sys/grid/select/line