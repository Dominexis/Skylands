
data modify entity @s data.intent.self set value {text:['walk']}

data modify storage pc:temp intent set value {text:['walk'],facing:1b,is_walk:1b}
data modify storage pc:temp range set value {type:"line",mode:"intent",line:{block:2},facing:{target:"ally",rotate:180,sync:"@s"},avail:{hole:0b}}
function pc:sys/grid/range/use