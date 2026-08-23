
data modify entity @s data.intent.self set value {text:['walk','attack']}

data modify storage pc:temp intent set value {damage:6,text:['damage','attack','walk'],tags:['pc.intent.walk']}
data modify storage pc:temp range set value {type:'line',mode:'intent',facing:{target:"ally",sync:"@s"},line:{block:9},avail:{hole:0b}}
function pc:sys/grid/range/use

data modify storage pc:temp intent set value {damage:1,text:['damage','attack']}
data modify storage pc:temp range set value {type:'2side',mode:'intent'}
execute rotated as @s as @e[tag=pc.intent.now,tag=pc.intent.walk,tag=!pc.intent.potential,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] positioned as @s run function pc:sys/grid/range/use

data modify storage pc:temp intent.avail.potential set value 1b
execute rotated as @s as @e[tag=pc.intent.now,tag=pc.intent.walk,tag=pc.intent.potential,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] positioned as @s run function pc:sys/grid/range/use
data remove storage pc:temp intent.avail.potential