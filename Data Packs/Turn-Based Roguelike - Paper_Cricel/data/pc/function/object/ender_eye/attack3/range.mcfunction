
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.attack+effect",font:"pc:intent"}]
execute facing entity @n[predicate=pc:object/ally,type=!player,distance=..100] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {damage:50,text:[{"translate":"pc.intent.attack+effect",font:"pc:intent"}],id:"bigger"}
data modify storage pc:temp line set value {block:4,mode:any,unhindered:true}
execute at @s run function pc:sys/grid/select/line

data modify storage pc:temp intent set value {damage:30,text:[{"translate":"pc.intent.attack+effect",font:"pc:intent"}],id:"smaller"}
data modify storage pc:temp line set value {block:3,mode:any,unhindered:true}
execute unless entity @s[tag=pc.sys.rotate_diagonal] at @s positioned ^4 ^ ^ run function pc:sys/grid/select/line
execute unless entity @s[tag=pc.sys.rotate_diagonal] at @s positioned ^-4 ^ ^ run function pc:sys/grid/select/line
execute if entity @s[tag=pc.sys.rotate_diagonal] at @s positioned ^5.656 ^ ^ run function pc:sys/grid/select/line
execute if entity @s[tag=pc.sys.rotate_diagonal] at @s positioned ^-5.656 ^ ^ run function pc:sys/grid/select/line