
execute as @e[tag=pc.rest_area.start_button,limit=4,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/void
summon minecraft:text_display ~ ~2 ~ {Tags:["pc.rest_area","pc.rest_area.start_button","pc.rest_area.start_button.title"],alignment:"center",background:1073741824,billboard:"center",default_background:0b,line_width:200,see_through:0b,shadow:1b,Rotation:[-90.0f,0.0f],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}
summon minecraft:item_display ~ ~1.5 ~ {Tags:["pc.rest_area","pc.rest_area.start_button","pc.rest_area.start_button.icon"],item:{id:"minecraft:paper",count:1},billboard:"vertical",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.0f,0.0f]}}
summon minecraft:text_display ~ ~0.6875 ~ {Tags:["pc.rest_area","pc.rest_area.start_button","pc.rest_area.start_button.tip"],alignment:"center",background:1073741824,billboard:"center",default_background:0b,line_width:200,see_through:0b,shadow:0b,text:[{text:"  ▶",color:"#EFAB2C",type:"text"},{color:"gray",type:"text",text:" ",extra:[{nbt:"sys.ui.click_to_start",storage:"pc:lang",interpret:1b}," "]},{text:"◀  ",color:"#EFAB2C",type:"text"}]}

summon minecraft:interaction ~ ~1 ~ {Tags:["pc.rest_area","pc.rest_area.start_button","pc.summon","pc.rest_area.start_button.button"],data:{on_click:"function pc:sys/rest_area/start_button/on_click"}}
execute as @e[tag=pc.summon,type=interaction,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/utils/button/init

data remove storage pc:game combat
$function pc:game/$(map_id)/$(level)
schedule function pc:sys/rest_area/start_button/summon/3 1t

# fx
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~1024 ~ 0 2 1
playsound minecraft:ui.loom.select_pattern master @a ~ ~1024 ~ 0 1.5 1