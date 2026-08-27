
data modify entity @s data.intent.self set value {text:['walk','attack','debuff']}

data modify storage pc:temp intent set value {damage:5,text:['damage','attack','walk'],tags:['pc.intent.walk']}
data modify storage pc:temp range set value {type:"line",mode:"intent",facing:{target:"ally",sync:"@s"},line:{block:9,pierce:{unit:1b,grid:1b}},avail:{hole:0b}}
function pc:sys/grid/range/use

data modify storage pc:temp intent set value {damage:3,text:['damage','attack','debuff']}
data modify storage pc:temp range set value {type:"2side",mode:"intent"}
execute rotated as @s as @e[tag=pc.intent.now,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] positioned as @s run function pc:sys/grid/range/use