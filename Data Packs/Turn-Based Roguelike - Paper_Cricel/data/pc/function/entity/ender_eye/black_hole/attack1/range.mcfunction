
data modify entity @s data.intent.self set value {text:['bomb_attack']}

data modify storage pc:temp intent set value {damage:8,text:['damage','attack']}
data modify storage pc:temp range set value {type:'any-cross',mode:'intent'}
function pc:sys/grid/range/use