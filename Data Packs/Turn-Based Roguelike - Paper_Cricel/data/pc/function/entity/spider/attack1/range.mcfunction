
data modify entity @s data.intent.self set value {text:['attack']}

data modify storage pc:temp intent set value {damage:6,text:['damage','attack']}
data modify storage pc:temp range set value {type:"3x3no0",mode:"intent",facing:{target:"ally",sync:"@s"}}
function pc:sys/grid/range/use