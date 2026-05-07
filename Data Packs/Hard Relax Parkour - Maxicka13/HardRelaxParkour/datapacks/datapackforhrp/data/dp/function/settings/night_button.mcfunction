# delete data
data remove entity @s interaction
data remove entity @s attack

# time set day
execute store result score $now time_score run time query daytime
execute unless score $now time_score matches ..12000 run return fail

kill @e[tag=nightButton]
kill @e[tag=dayButton]

execute at @e[type=minecraft:marker,tag=nbMarker,limit=1] run summon block_display ~ ~ ~ {Passengers:[{id:"minecraft:text_display",text:[{"text":"Night","color":"#FFFFFF","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":"minecraft:uniform"}],text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[0f,0f,-1f,-0.1274999999f,0f,1.5f,0f,-0.2062500022f,1.5f,0f,0f,0f,0f,0f,0f,1f],Tags:["nightButton"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:lime_concrete",Properties:{}},transformation:[0.25f,0f,0f,-0.1224999999f,0f,0.375f,0f,-0.2062500022f,0f,0f,1f,-0.5f,0f,0f,0f,1f],Tags:["nightButton"]}]}
execute at @e[type=minecraft:marker,tag=dbMarker,limit=1] run summon block_display ~ ~ ~ {Passengers:[{id:"minecraft:text_display",text:[{"text":"Day","color":"#FFFFFF","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":"minecraft:uniform"}],text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[0f,0f,-1f,-0.1274999999f,0f,1.5f,0f,-0.2062500022f,1.5f,0f,0f,0f,0f,0f,0f,1f],Tags:["dayButton"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:red_concrete",Properties:{}},transformation:[0.25f,0f,0f,-0.1224999999f,0f,0.375f,0f,-0.2062500022f,0f,0f,1f,-0.5f,0f,0f,0f,1f],Tags:["dayButton"]}]}
time set night