
execute as @e[tag=pc.rest_area.exit_game,limit=2] at @s run function sys:void
summon minecraft:text_display ~ ~0.5 ~ {Tags:["pc.rest_area","pc.rest_area.exit_game"],CustomNameVisible:1b,alignment:"center",background:0,billboard:"vertical",brightness:{block:0,sky:15},default_background:0b,line_width:200,see_through:0b,shadow:0b,shadow_strength:0.0f,text:{font:"sys:icon",text:"4",type:"text"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.0f,3.0f,3.0f],translation:[-0.1f,-0.45f,0.0f]},view_range:2.0f}
data modify entity @e[tag=pc.rest_area.exit_game,type=text_display,limit=1] CustomName set from storage pc:lang sys.rest_area.exit_game
summon minecraft:interaction ~ ~0.25 ~ {Tags:["pc.rest_area","pc.rest_area.exit_game","pc.summon"],width:0.5,height:0.5,data:{on_click:"function sys:lobby/end/use {stat:lose}"}}
execute as @e[tag=pc.summon,type=interaction,limit=1] at @s run function sys:utils/button/init