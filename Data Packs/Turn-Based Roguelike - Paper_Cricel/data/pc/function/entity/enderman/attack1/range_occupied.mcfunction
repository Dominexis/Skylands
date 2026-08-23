
kill @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]

execute at @s run function pc:sys/grid/range/use
execute at @s positioned ~-1.5 ~-100 ~-1.5 positioned ^ ^ ^4 run data merge entity @e[tag=pc.intent.now,type=marker,dx=2,dy=200,dz=2,limit=1] {data:{text:['damage','attack','walk'],is_walk:1b}}

data modify storage pc:temp intent.avail.potential set value 1b
function pc:sys/grid/range/use
data remove storage pc:temp intent.avail.potential