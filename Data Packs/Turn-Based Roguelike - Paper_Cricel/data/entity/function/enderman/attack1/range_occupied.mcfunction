
kill @e[tag=pc.intent.now,type=marker,limit=1]

execute at @s run function sys:grid/range/use
execute at @s positioned ~-1.5 ~-100 ~-1.5 positioned ^ ^ ^4 run data merge entity @e[tag=pc.intent.now,type=marker,dx=2,dy=200,dz=2,limit=1] {data:{text:['damage','attack','walk'],is_walk:1b}}

data modify storage pc:temp intent.avail.potential set value 1b
function sys:grid/range/use
data remove storage pc:temp intent.avail.potential