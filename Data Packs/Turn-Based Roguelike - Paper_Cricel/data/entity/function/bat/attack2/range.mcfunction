
data modify entity @s data.intent.self set value {text:['attack']}

data modify storage pc:temp intent set value {damage:1,text:['damage','*3','attack']}
data modify storage pc:temp range set value {type:"5x5",mode:"intent",facing:{target:"ally",sync:"@s"}}
function sys:grid/range/use