
data modify entity @s data.intent.self set value {text:['summon','walk']}

data modify storage pc:temp intent set value {text:['walk'],is_walk:1b,facing:1b,tags:['pc.intent.walk']}
data modify storage pc:temp range set value {type:'nearest',mode:'intent',nearest:{block:2,target:"ally"},avail:{hole:0b}}
function pc:sys/grid/range/use

data modify storage pc:temp intent set value {text:['summon']}
data modify storage pc:temp range set value {type:'any-cross',mode:'intent'}
function pc:sys/grid/range/type/nearest/before_occupy

data modify storage pc:temp intent.avail.potential set value 1b
execute as @e[tag=pc.intent.walk,tag=pc.intent.now,type=marker,limit=2,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/grid/range/use
data remove storage pc:temp intent.avail.potential