
# fx
execute anchored eyes run summon minecraft:text_display ^ ^ ^ {Tags:["pc.fx.text","pc.fx","pc.summon"],alignment:"center",background:0,billboard:"center",default_background:0b,line_width:200,see_through:1b,shadow:1b,teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0f,0.0f,0.0f],translation:[0.0f,-0.375f,0.0f]}}

$data modify entity @e[tag=pc.summon,type=text_display,distance=..20,limit=1] text set value $(text)
execute as @e[tag=pc.summon,type=text_display,distance=..20,limit=1] at @s if entity @e[type=minecraft:text_display,distance=..0.1,tag=pc.fx.text,tag=!pc.summon,limit=1] positioned ~ ~0.75 ~ run function sys:fx/text/offset_y

tag @e[tag=pc.summon,type=text_display,distance=..20,limit=1] remove pc.summon