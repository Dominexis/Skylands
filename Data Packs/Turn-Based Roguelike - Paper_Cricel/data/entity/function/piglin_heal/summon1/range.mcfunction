
data modify entity @s data.intent.self set value {text:['summon']}

data modify storage pc:temp intent set value {text:['summon']}
data modify storage pc:temp range set value {type:"3x3",mode:"intent",target:"space",facing:{target:"ally",sync:"@s"},avail:{hole:0b}}
function sys:grid/range/use

data modify storage pc:temp intent.avail.potential set value 1b
data remove storage pc:temp range.target
function sys:grid/range/use
data remove storage pc:temp intent.avail.potential