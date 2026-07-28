
execute as @e[tag=pc.grid,type=minecraft:marker] at @s positioned ~-1.5 ~-100 ~-1.5 unless entity @e[type=minecraft:item_display,dx=2,dy=200,dz=2,tag=pc.select,tag=!pc.select.clear,limit=1] run tag @s add pc.temp
execute as @e[tag=pc.grid,tag=!pc.temp,type=minecraft:marker] at @s run function sys:grid/space/summon/3
execute if entity @e[tag=pc.temp,type=minecraft:marker,limit=1] run schedule function sys:grid/space/summon/2 2t

# Reset
tag @e[tag=pc.temp,type=minecraft:marker] remove pc.temp