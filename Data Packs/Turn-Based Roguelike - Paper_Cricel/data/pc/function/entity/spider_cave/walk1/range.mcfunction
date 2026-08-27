
data modify entity @s data.intent.self set value {text:['attack','walk']}

data modify storage pc:temp intent set value {damage:3,text:['damage','attack','walk','debuff'],facing:1b,is_walk:1b}
data modify storage pc:temp range set value {type:"nearest",mode:"intent",nearest:{block:3,target:"ally"},avail:{hole:0b}}
function pc:sys/grid/range/use

tag @e[tag=pc.intent.now,type=marker,sort=furthest,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] add pc.temp
kill @e[tag=pc.intent.now,tag=!pc.temp,type=marker,limit=2,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]
tag @e[tag=pc.temp,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.temp

data modify storage pc:temp intent set value {text:['debuff']}
data modify storage pc:temp range set value {type:"3x3no0",mode:"intent"}
execute at @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/range/use