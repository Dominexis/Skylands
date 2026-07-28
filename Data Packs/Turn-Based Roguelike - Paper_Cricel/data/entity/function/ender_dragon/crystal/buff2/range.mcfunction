
data modify entity @s data.intent.self set value {text:['heal']}

data modify storage pc:temp intent set value {text:['heal']}
data modify storage pc:temp range set value {type:"0",mode:"intent"}
execute at @e[tag=pc.entity.ender_dragon,type=bee,limit=1] run function sys:grid/range/use