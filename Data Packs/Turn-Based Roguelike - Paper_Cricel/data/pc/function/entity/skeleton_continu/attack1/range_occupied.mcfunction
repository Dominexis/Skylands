
kill @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]

data modify storage pc:temp range.facing.sync set value "@s"
function pc:sys/grid/range/use

data merge entity @e[tag=pc.intent.now,tag=pc.intent.attack,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] {data:{damage:2,text:['damage','*3','attack','walk'],is_walk:1b}}