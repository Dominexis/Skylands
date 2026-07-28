
data modify entity @s data.intent.self set value {text:['attack','debuff']}

data modify storage pc:temp intent set value {damage:3,text:['damage','attack','debuff']}
data modify storage pc:temp range set value {type:"line",mode:"intent",facing:{target:"ally",sync:"@s"},line:{block:4}}
function sys:grid/range/use