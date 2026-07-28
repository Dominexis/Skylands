
execute as @e[tag=pc.lobby.maps,type=minecraft:item_display] at @s run function sys:lobby/gameplay/maps/main
execute as @e[tag=pc.lobby.settings,type=minecraft:item_display] at @s run function sys:lobby/gameplay/settings/main
execute as @e[tag=pc.lobby.start,type=minecraft:item_display,limit=1] at @s run function sys:lobby/start/main
execute as @e[tag=pc.lobby.author,type=minecraft:armor_stand,limit=1] at @s run function sys:lobby/author/main