## This function runs when the plot turns off
execute positioned 1792 64 256 run kill @e[type=!minecraft:player,distance=..250,tag=maced.mob]
execute positioned 1792 64 256 run kill @e[type=minecraft:item,distance=..250]

execute positioned 1792 64 256 as @e[type=minecraft:marker,distance=..250,tag=maced.checkpoint_marker] at @s run setblock ~ ~-1 ~ minecraft:gold_block
execute positioned 1792 64 256 as @e[type=minecraft:marker,distance=..250,tag=maced.checkpoint_marker] at @s run kill @s