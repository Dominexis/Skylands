
data modify entity @s data.intent.self set value {text:['attack']}

data modify storage pc:temp intent set value {damage:4,text:['damage','attack']}
data modify storage pc:temp range set value {type:"line",mode:"intent",facing:{target:"ally",sync:"@s"},line:{block:1}}
function sys:grid/range/use