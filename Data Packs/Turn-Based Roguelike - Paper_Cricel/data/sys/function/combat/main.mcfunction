
execute as @e[tag=pc.select,type=minecraft:item_display] at @s run function sys:grid/space/main
execute as @e[tag=pc.intent.icon,type=minecraft:text_display] at @s run function sys:entity/intent/icon/main