tp @s 1792 65 258 180 ~
clear @s

tag @s[team=sl.player] add maced.in_game
attribute @s[team=sl.player] minecraft:safe_fall_distance base set 255

title @s times 10 100 10
title @s title ["",{"text":"Welcome to ","color":"green"},{"text":"Maced","bold":true,"color":"blue"}]

scoreboard players reset @s maced.info_trigger
scoreboard players set @s maced.info 0

tellraw @s ["",{"text":"Welcome to ","color":"green"},{"text":"Maced!","bold":true,"color":"dark_blue"}]

scoreboard players enable @s maced.info_trigger

tellraw @s {"text":"\nNext\n","color":"dark_green","bold": true,"clickEvent":{"action":"run_command","value":"/trigger maced.info_trigger"},"hoverEvent":{"action":"show_text","contents":"Click to continue reading"}}