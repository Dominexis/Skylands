
kill @e[tag=pc.intent.now,type=marker,limit=1]

data modify storage pc:temp range.facing.sync set value "@s"
function sys:grid/range/use

data merge entity @e[tag=pc.intent.now,tag=pc.intent.attack,type=marker,limit=1] {data:{damage:2,text:['damage','*3','attack','walk'],is_walk:1b}}