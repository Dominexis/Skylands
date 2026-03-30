
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.effect",font:"pc:intent"}]

data modify storage pc:temp intent set value {text:[{"translate":"pc.intent.effect",font:"pc:intent"}],facing:true}
execute at @n[predicate=pc:object/ally_player,type=!player,distance=..100] run function pc:sys/grid/select/any