## This function runs when the plot turns off
execute positioned 1792 64 256 run kill @e[tag=maced.mob,distance=..250]
execute positioned 1792 64 256 run kill @e[type=item,distance=..250]

execute positioned 1792 64 256 as @e[type=marker,tag=maced.checkpoint_marker,distance=..250] at @s run setblock ~ ~-1 ~ gold_block
execute positioned 1792 64 256 as @e[type=marker,tag=maced.checkpoint_marker,distance=..250] at @s run kill @s