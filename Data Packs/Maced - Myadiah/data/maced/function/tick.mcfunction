## This function runs every tick at the center of the plot at Y=0 when the plot is on

## Checkpoint
execute positioned 1792 64 256 as @a[team=sl.player,tag=maced.in_game,distance=..250] at @s if block ~ ~-1 ~ gold_block run function maced:checkpoint

## Death
execute positioned 1792 64 256 as @a[team=sl.player,tag=maced.in_game,distance=..250] store result score @s maced.Ylevel run data get entity @s Pos[1]
execute positioned 1792 64 256 as @a[team=sl.player,tag=maced.in_game,distance=..250,scores={maced.Ylevel=..30}] run function maced:recall

## Info trigger
execute positioned 1792 64 256 as @a[team=sl.player,tag=maced.in_game,distance=..250,scores={maced.info_trigger=1..}] run function maced:info_trigger

##Level Completions
execute positioned 1792 64 256 if block 1792 65 150 #minecraft:buttons[powered=true] run tp @a[team=sl.player,tag=maced.in_game,distance=..250] 1792 65 256 90 0
execute positioned 1792 64 256 if block 1792 65 150 #minecraft:buttons[powered=true] run setblock 1792 65 150 minecraft:polished_blackstone_button[face=floor,facing=north]

execute positioned 1792 64 256 if block 1685 73 256 #minecraft:buttons[powered=true] run tp @a[team=sl.player,tag=maced.in_game,distance=..250] 1792 65 256 -90 0
execute positioned 1792 64 256 if block 1685 73 256 #minecraft:buttons[powered=true] run setblock 1685 73 256 minecraft:polished_blackstone_button[face=floor,facing=west]

execute positioned 1792 64 256 if block 1874 80 256 #minecraft:buttons[powered=true] run tp @a[team=sl.player,tag=maced.in_game,distance=..250] 1792 65 256 0 0
execute positioned 1792 64 256 if block 1874 80 256 #minecraft:buttons[powered=true] run setblock 1874 80 256 minecraft:polished_blackstone_button[face=floor,facing=east]
execute positioned 1792 64 256 if block 1874 80 256 #minecraft:buttons[powered=true] run fill 1791 65 260 1793 65 265 minecraft:spruce_slab[type=bottom]