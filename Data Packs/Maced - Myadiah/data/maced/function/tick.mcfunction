## This function runs every tick at the center of the plot at Y=0 when the plot is on

## Checkpoint
execute positioned 5888 64 -3328 as @a[distance=..250,tag=maced.in_game,team=sl.player] at @s if block ~ ~-1 ~ minecraft:gold_block run function maced:checkpoint

## Death
execute positioned 5888 64 -3328 as @a[distance=..250,tag=maced.in_game,team=sl.player] store result score @s maced.Ylevel run data get entity @s Pos[1]
execute positioned 5888 64 -3328 as @a[distance=..250,tag=maced.in_game,scores={maced.Ylevel=..30},team=sl.player] run function maced:recall

## Info trigger
execute positioned 5888 64 -3328 as @a[distance=..250,tag=maced.in_game,scores={maced.info_trigger=1..},team=sl.player] run function maced:info_trigger

##Level Completions
execute positioned 5888 64 -3328 if block 5888 65 -3434 #minecraft:buttons[powered=true] run tp @a[distance=..250,tag=maced.in_game,team=sl.player] 5888 65 -3328 90 0
execute positioned 5888 64 -3328 if block 5888 65 -3434 #minecraft:buttons[powered=true] run setblock 5888 65 -3434 minecraft:polished_blackstone_button[face=floor,facing=north]

execute positioned 5888 64 -3328 if block 5781 73 -3328 #minecraft:buttons[powered=true] run tp @a[distance=..250,tag=maced.in_game,team=sl.player] 5888 65 -3328 -90 0
execute positioned 5888 64 -3328 if block 5781 73 -3328 #minecraft:buttons[powered=true] run setblock 5781 73 -3328 minecraft:polished_blackstone_button[face=floor,facing=west]

execute positioned 5888 64 -3328 if block 5970 80 -3328 #minecraft:buttons[powered=true] run tp @a[distance=..250,tag=maced.in_game,team=sl.player] 5888 65 -3328 0 0
execute positioned 5888 64 -3328 if block 5970 80 -3328 #minecraft:buttons[powered=true] run setblock 5970 80 -3328 minecraft:polished_blackstone_button[face=floor,facing=east]
execute positioned 5888 64 -3328 if block 5970 80 -3328 #minecraft:buttons[powered=true] run fill 5887 65 -3324 5889 65 -3319 minecraft:spruce_slab[type=bottom]