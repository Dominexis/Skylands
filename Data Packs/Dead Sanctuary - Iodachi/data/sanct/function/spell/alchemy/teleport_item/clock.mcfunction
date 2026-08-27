execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.teleport_item,limit=1] at @s run function sanct:spell/alchemy/teleport_item/check_teleport

execute if entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.teleport_item,limit=1] run schedule function sanct:spell/alchemy/teleport_item/clock 1