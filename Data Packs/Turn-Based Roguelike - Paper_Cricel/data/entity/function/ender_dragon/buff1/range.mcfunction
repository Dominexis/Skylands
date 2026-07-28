
data modify entity @s data.intent.self set value {text:['buff','heal']}

data modify storage pc:temp intent set value {text:['buff']}
data modify storage pc:temp range set value {type:"0",mode:"intent",facing:{target:"player",sync:"@s"}}
function sys:grid/range/use

data modify storage pc:temp intent set value {text:['heal']}
data modify storage pc:temp range set value {type:"0",mode:"intent"}
execute at @e[tag=pc.entity.end_crystal,type=end_crystal,limit=2] run function sys:grid/range/use
execute as @e[tag=pc.effect.undying_shell,type=item_display,limit=2] at @s run function sys:grid/range/use