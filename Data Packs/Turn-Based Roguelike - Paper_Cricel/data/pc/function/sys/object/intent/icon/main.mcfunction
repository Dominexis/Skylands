
# effect
execute positioned ~-1.5 ~-100 ~-1.5 as @e[type=!minecraft:player,dx=2,dy=200,dz=2,limit=1,predicate=pc:object/all] run tag @s add pc.temp
execute unless entity @e[type=!minecraft:player,distance=..100,tag=pc.temp,limit=1,predicate=pc:object/all] run return fail

scoreboard players set #offset pc.main 0
execute store result score #y pc.main as @e[type=!minecraft:player,distance=..100,tag=pc.temp,limit=1] on passengers if entity @s[type=minecraft:text_display,tag=pc.sys.hover_info] run data get entity @s Pos[1] 100
execute store result score #y2 pc.main run data get entity @s Pos[1] 100
execute store result score #offset pc.main run data get entity @e[type=!minecraft:player,distance=..100,tag=pc.temp,limit=1] data.height 100
scoreboard players add #offset pc.main 140
execute as @e[type=!minecraft:player,distance=..100,tag=pc.temp,limit=1] on passengers if entity @s[type=minecraft:text_display,tag=pc.sys.hover_info,tag=pc.sys.hover_info.effect] run scoreboard players add #offset pc.main 40

scoreboard players operation #y pc.main += #offset pc.main
execute unless score #y pc.main = #y2 pc.main store result entity @s Pos[1] double 0.01 run scoreboard players get #y pc.main

tag @e[type=!minecraft:player,distance=..100,tag=pc.temp,limit=1] remove pc.temp