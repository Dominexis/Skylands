
data modify entity @s data.intent.self set value {text:['attack','walk']}

data modify storage pc:temp intent set value {damage:2,text:['damage','attack','walk'],facing:1b,is_walk:1b}
data modify storage pc:temp range set value {type:"nearest",mode:"intent",nearest:{block:2,target:"ally"},avail:{hole:0b}}
function sys:grid/range/use

data modify storage pc:temp intent set value {damage:2,text:['damage','attack']}
data modify storage pc:temp range set value {type:"1x1",mode:"intent"}
scoreboard players operation #self pc.origin.id = @s pc.entity.id
execute as @e[tag=pc.intent,type=marker,predicate=sys:owner/origin,nbt={data:{is_walk:1b}}] at @s run function sys:grid/range/use

# display twice attack
scoreboard players reset @e[tag=pc.intent,type=marker,predicate=sys:owner/origin] pc.trigger
execute as @e[tag=pc.intent,type=marker,predicate=sys:owner/origin,nbt={data:{is_walk:1b}}] at @s positioned ~-5.5 ~-100 ~-5.5 run scoreboard players add @e[tag=pc.intent,type=marker,predicate=sys:owner/origin,dx=10,dy=200,dz=10] pc.trigger 1
execute as @e[tag=pc.intent,type=marker,scores={pc.trigger=2..}] run data modify entity @s data.text insert 1 value "*2"