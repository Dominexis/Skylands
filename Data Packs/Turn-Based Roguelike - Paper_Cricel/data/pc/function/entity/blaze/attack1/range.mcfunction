
data modify entity @s data.intent.self set value {text:['attack']}

data modify storage pc:temp intent set value {damage:5,text:['damage','attack']}
data modify storage pc:temp range set value {type:"line",mode:"intent",line:{block:9},facing:{target:"ally",sync:"@s"}}
function pc:sys/grid/range/use