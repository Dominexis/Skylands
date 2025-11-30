
# Tutorial
execute if data storage pc:settings {gameplay:{tutorial:1b}} unless data storage pc:game tutorial.campfire at @e[type=minecraft:text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.rest_area.campfire,limit=1] if entity @a[distance=..6,limit=1,predicate=pc:player/ingame,predicate=sl:player] run function pc:sys/game/rest_area/campfire/tutorial
execute if data storage pc:settings {gameplay:{tutorial:1b}} unless data storage pc:game tutorial.trader at @e[type=minecraft:villager,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.rest_area.trader] if entity @a[distance=..6,limit=1,predicate=pc:player/ingame,predicate=sl:player] run function pc:sys/game/rest_area/trader/tutorial

# Teleporter
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.rest_area.tpter,limit=1] at @s run function pc:sys/game/combat/tpter/main
execute as @e[type=minecraft:text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.rest_area.tpter.tip,limit=1] at @s run function pc:sys/game/combat/tpter/tip/main