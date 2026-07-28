
data merge entity @s {Tags:["pc.fx.show_dmg","pc.summon"],alignment:"center",background:0,billboard:"center",default_background:0b,fall_distance:0.0d,line_width:200,see_through:1b,shadow:1b,shadow_strength:0.0f,teleport_duration:2,text:[{storage:"pc:temp",nbt:"show_dmg.display",interpret:1b,source:"storage",type:"nbt"}],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[4.0f,4.0f,1.0f],translation:[-0.15f,-0.5f,0.0f]},view_range:2.0f}

execute if entity @e[tag=pc.fx.show_dmg,tag=!pc.summon,type=minecraft:text_display,distance=..0.1,limit=1] positioned ~0.25 ~0.75 ~0.25 run function sys:fx/show_dmg/offset_y

tag @s remove pc.summon