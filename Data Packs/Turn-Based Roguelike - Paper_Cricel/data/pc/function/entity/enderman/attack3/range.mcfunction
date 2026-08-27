
data modify entity @s data.intent.self set value {text:['deadly_attack']}

data modify storage pc:temp intent set value {damage:1,text:['damage','*5','attack']}
data modify storage pc:temp range set value {type:"inf",mode:"intent",facing:{target:"ally",sync:"@s"}}
function pc:sys/grid/range/use