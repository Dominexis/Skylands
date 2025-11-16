tp @s 5888 65 -3326 180 ~
clear @s

tag @s[team=sl.player] add maced.in_game
attribute @s[team=sl.player] minecraft:safe_fall_distance base set 255

title @s times 10 100 10
title @s title ["",{text:"Welcome to ",color:"green",type:"text"},{text:"Maced",bold:1b,color:"blue",type:"text"}]

scoreboard players reset @s maced.info_trigger
scoreboard players set @s maced.info 0

tellraw @s ["",{text:"Welcome to ",color:"green",type:"text"},{text:"Maced!",bold:1b,color:"dark_blue",type:"text"}]

scoreboard players enable @s maced.info_trigger

tellraw @s {text:"\nNext\n",color:"dark_green",bold:1b,click_event:{action:"run_command",command:"/trigger maced.info_trigger"},hover_event:{action:"show_text",value:"Click to continue reading"},type:"text"}