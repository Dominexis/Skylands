
execute if data storage pc:settings gameplay{tutorial:1b} unless data storage pc:game tutorial.campfire at @e[type=minecraft:text_display,tag=pc.rest_area.campfire,limit=1] if entity @a[predicate=sys:player/ingame,predicate=sl:player,distance=..6,limit=1] run function sys:rest_area/campfire/tutorial
execute if data storage pc:settings gameplay{tutorial:1b} unless data storage pc:game tutorial.trader at @e[type=minecraft:villager,tag=pc.rest_area.trader] if entity @a[predicate=sys:player/ingame,predicate=sl:player,distance=..6,limit=1] run function sys:rest_area/trader/tutorial

execute as @e[tag=pc.rest_area.start_button.tip,type=text_display,limit=1] at @s run function sys:rest_area/start_button/main
execute as @e[tag=pc.rest_area.tpter,type=minecraft:marker,limit=1] at @s run function sys:combat/tpter/main
execute as @e[tag=pc.rest_area.tpter.tip,type=minecraft:text_display,limit=1] at @s run function sys:combat/tpter/tip/main