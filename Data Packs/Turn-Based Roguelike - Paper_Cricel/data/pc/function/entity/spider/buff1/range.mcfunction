
data modify entity @s data.intent.self set value {text:['buff','defense']}

data modify storage pc:temp intent set value {text:['buff','defense']}
data modify storage pc:temp range set value {type:"0",mode:"intent"}
function pc:sys/grid/range/use