
data modify entity @s data.intent.self set value {text:['attack','walk']}

data modify storage pc:temp intent set value {damage:2,text:['damage','attack','walk'],facing:1b,is_walk:1b}
data modify storage pc:temp range set value {type:"nearest",mode:"intent",nearest:{block:2,target:"ally"},avail:{hole:0b}}
function pc:sys/grid/range/use

data modify storage pc:temp intent set value {damage:2,text:['damage','attack']}
data modify storage pc:temp range set value {type:"1x1",mode:"intent"}
scoreboard players operation #self pc.origin.id = @s pc.entity.id
execute as @e[tag=pc.intent,type=marker,predicate=pc:sys/owner/origin,nbt={data:{is_walk:1b}},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/grid/range/use

# display twice attack
scoreboard players reset @e[tag=pc.intent,type=marker,predicate=pc:sys/owner/origin,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.trigger
execute as @e[tag=pc.intent,type=marker,predicate=pc:sys/owner/origin,nbt={data:{is_walk:1b}},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s positioned ~-5.5 ~-100 ~-5.5 run scoreboard players add @e[tag=pc.intent,type=marker,predicate=pc:sys/owner/origin,dx=10,dy=200,dz=10] pc.trigger 1
execute as @e[tag=pc.intent,type=marker,scores={pc.trigger=2..},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run data modify entity @s data.text insert 1 value "*2"