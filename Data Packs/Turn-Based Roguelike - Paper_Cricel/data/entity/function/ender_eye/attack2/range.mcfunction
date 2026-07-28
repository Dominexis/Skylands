
data modify entity @s data.intent.self set value {text:['attack','defense']}

data modify storage pc:temp intent set value {text:['defense']}
data modify storage pc:temp range set value {type:'0',mode:'intent'}
function sys:grid/range/use

data modify storage pc:temp intent set value {damage:2,text:['damage','*2','attack'],tags:['pc.intent.attack']}
data modify storage pc:temp range set value {type:'7x7',mode:'intent',facing:{target:'ally',sync:"@s"}}
function sys:grid/range/use
execute as @e[tag=pc.intent.now,tag=pc.intent.attack,type=marker] if function sys:grid/range/type/5x5 run data modify entity @s data.damage set value 4