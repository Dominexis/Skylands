
data modify entity @s data.intent.self set value {text:['attack']}

data modify storage pc:temp intent set value {damage:3,text:['damage','*2','attack']}
data modify storage pc:temp range set value {type:"any-cross",mode:"intent",facing:{target:"ally",pos:"~4 ~ ~4",sync:"@s"}}
function pc:sys/grid/range/use

data modify storage pc:temp range.facing.pos set value "~-4 ~ ~-4"
function pc:sys/grid/range/use