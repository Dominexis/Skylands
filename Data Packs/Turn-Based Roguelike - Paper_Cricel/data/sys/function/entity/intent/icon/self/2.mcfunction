
data merge entity @s {Tags:["pc.fx","pc.intent.icon","pc.intent.icon.self"],alignment:"center",background:0,billboard:"vertical",default_background:0b,line_width:200,brightness:{block:15,sky:15},see_through:0b,shadow:0b,teleport_duration:3,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.5f,2.5f,2.5f],translation:[0.0f,0.75f,0.0f]}}

function sys:entity/intent/icon/interpret/loop

data modify entity @s text set value ["",{text:"\uf003","font":"sys:space",type:"text"},{nbt:"intent.result",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"}]
ride @s mount @e[tag=pc.self,distance=..0.1,limit=1]