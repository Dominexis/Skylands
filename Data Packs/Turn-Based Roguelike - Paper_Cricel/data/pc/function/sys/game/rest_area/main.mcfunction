
# Tutorial
execute if data storage pc:settings {gameplay:{tutorial:true}} unless data storage pc:game tutorial.campfire at @e[type=text_display,tag=pc.rest_area.campfire,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] if entity @a[predicate=pc:player/ingame,predicate=sl:player,distance=..6,limit=1] run function pc:sys/game/rest_area/campfire/tutorial
execute if data storage pc:settings {gameplay:{tutorial:true}} unless data storage pc:game tutorial.trader at @e[type=villager,tag=pc.rest_area.trader,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if entity @a[predicate=pc:player/ingame,predicate=sl:player,distance=..6,limit=1] run function pc:sys/game/rest_area/trader/tutorial

# Teleporter
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.rest_area.tpter,limit=1] at @s run function pc:sys/game/combat/tpter/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=text_display,tag=pc.rest_area.tpter.tip,limit=1] at @s run function pc:sys/game/combat/tpter/tip/main