
data modify entity @s data.intent.self set value {text:['attack']}

data modify storage pc:temp intent set value {damage:8,text:['damage','attack']}
data modify storage pc:temp range set value {type:"line",mode:"intent",facing:{target:"ally",sync:"@s"},line:{block:4}}
function pc:sys/grid/range/use