
data modify entity @s data.intent.self set value {text:['buff']}

data modify storage pc:temp intent set value {text:['buff']}
data modify storage pc:temp range set value {type:"0",mode:"intent"}
execute at @n[tag=pc.entity.ender_dragon,type=bee,distance=..100] run function sys:grid/range/use