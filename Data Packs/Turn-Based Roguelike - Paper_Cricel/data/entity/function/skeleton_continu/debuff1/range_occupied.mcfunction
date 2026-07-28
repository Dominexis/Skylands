
kill @e[tag=pc.intent.now,type=marker,limit=1]

function sys:grid/range/use
data merge entity @e[tag=pc.intent.now,type=marker,limit=1] {data:{text:['debuff','walk'],is_walk:1b}}