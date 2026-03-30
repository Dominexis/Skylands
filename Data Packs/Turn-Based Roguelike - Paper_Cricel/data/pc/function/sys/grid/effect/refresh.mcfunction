
# effect
execute positioned ~ ~0.01 ~2 run kill @n[type=minecraft:text_display,distance=..0.1,tag=pc.grid.effect]

function pc:passive/effect/icon
execute if data storage pc:temp hover.display.effect run summon minecraft:text_display ~ ~0.01 ~2 {Tags:["pc.grid.effect"],alignment:"center",background:1073741824,default_background:0b,fall_distance:0.0d,line_width:200,see_through:0b,shadow:0b,text:{nbt:"hover.display.effect[]",storage:"pc:temp",interpret:1b,separator:" ",font:"pc:effect",color:"white",bold:0b,source:"storage",type:"nbt"},transformation:{left_rotation:[-0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.0f,0.2f]}}
data remove storage pc:temp hover

function pc:sys/grid/effect/info/refresh