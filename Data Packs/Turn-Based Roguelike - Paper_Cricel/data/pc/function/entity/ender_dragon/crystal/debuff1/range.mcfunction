
data modify entity @s data.intent.self set value {text:['debuff']}

data modify storage pc:temp intent set value {text:['debuff']}
data modify storage pc:temp range set value {type:"0",mode:"intent"}
execute at @n[predicate=pc:sys/entity/ally,distance=..100,type=!minecraft:giant] run function pc:sys/grid/range/use