
# Player
execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/inplot,predicate=sl:player] at @s run function pc:sys/player/main

# Game
function pc:fx/main
function pc:sys/lobby/main
execute if score $game.start pc.main matches 1 run function pc:sys/game/main
execute as @e[type=minecraft:item,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/item] at @s run function pc:sys/item/main
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/all] at @s run function pc:sys/object/main

# Utils
execute if data storage pc:game schedule run function pc:sys/utils/schedule/main
execute as @e[type=minecraft:interaction,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.button] at @s run function pc:sys/utils/button/main