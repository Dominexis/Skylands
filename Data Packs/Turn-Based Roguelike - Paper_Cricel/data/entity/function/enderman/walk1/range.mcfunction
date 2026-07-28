
data modify entity @s data.intent.self set value {text:['attack','walk']}

tag @e[tag=pc.grid.in_range,type=marker] remove pc.grid.in_range
data modify storage pc:temp range set value {type:"any-cross",mode:"in_range",target:"space",avail:{hole:0b}}
execute at @e[predicate=sys:entity/player,limit=1] run function sys:grid/range/use

data modify storage pc:temp intent set value {text:['walk'],is_walk:1b}
data modify storage pc:temp range set value {type:"0",mode:"intent"}
execute at @e[predicate=sys:entity/player,limit=1] at @n[tag=pc.grid.in_range,type=marker,sort=furthest,distance=..100] run function sys:grid/range/use

data modify storage pc:temp intent set value {damage:10,text:['damage','attack'],tags:['pc.intent.attack']}
data modify storage pc:temp range set value {type:"line",mode:"intent",facing:{target:"player",sync:"@s"},line:{block:9,pierce:{grid:1b}},avail:{wall:1b}}
execute at @e[tag=pc.intent.now,type=marker,limit=1] run function sys:grid/range/use