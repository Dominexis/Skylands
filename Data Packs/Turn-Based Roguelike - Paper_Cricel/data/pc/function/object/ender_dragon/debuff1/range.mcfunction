
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.effect",font:"pc:intent"}]

data modify storage pc:temp intent set value {text:[{translate:"pc.intent.effect",font:"pc:intent"}],facing:1b}
execute at @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally_player] run function pc:sys/grid/select/any