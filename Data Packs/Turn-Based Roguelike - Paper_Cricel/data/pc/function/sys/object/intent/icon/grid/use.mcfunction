
# effect
summon minecraft:text_display ~ ~ ~ {Tags:["pc.fx","pc.intent_icon","pc.summon"],alignment:"center",background:0,billboard:"center",default_background:0b,line_width:200,see_through:0b,shadow:0b,teleport_duration:3,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.5f,2.5f,2.5f],translation:[0.0f,-0.375f,0.0f]}}
execute as @n[type=minecraft:text_display,distance=..0.01,tag=pc.summon] at @s run function pc:sys/object/intent/icon/grid/2