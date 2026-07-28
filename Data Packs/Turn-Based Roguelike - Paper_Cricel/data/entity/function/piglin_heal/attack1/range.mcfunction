
data modify entity @s data.intent.self set value {text:['attack','debuff']}

data modify storage pc:temp intent set value {damage:2,text:['damage','attack','debuff']}
data modify storage pc:temp range set value {type:'any-cross',mode:'intent',facing:{target:"ally",sync:"@s"}}
function sys:grid/range/use

data modify storage pc:temp range set value {type:'anyd-cross',mode:'intent'}
function sys:grid/range/use