## This function runs when the plot turns on
scoreboard objectives add maced.jump_pad dummy
scoreboard objectives add maced.Scores dummy
scoreboard objectives add maced.Ylevel dummy

scoreboard objectives add maced.info_trigger trigger
scoreboard objectives add maced.info dummy

scoreboard players set checkpoint_count maced.Scores 0

execute positioned 5888 64 -3328 as @e[type=minecraft:marker,distance=..250,tag=maced.checkpoint_marker] at @s run setblock ~ ~-1 ~ minecraft:gold_block
execute positioned 5888 64 -3328 as @e[type=minecraft:marker,distance=..250,tag=maced.checkpoint_marker] at @s run kill @s

execute positioned 5888 64 -3328 run kill @e[type=minecraft:pig,distance=..250,tag=maced.mob]
execute positioned 5888 64 -3328 run kill @e[type=minecraft:item,distance=..250]

summon minecraft:item 5888 65 -3328 {Glowing:1b,Age:-32768,Invulnerable:1b,Item:{id:"minecraft:mace",components:{"minecraft:enchantments":{"minecraft:wind_burst":1},"minecraft:unbreakable":{}},count:1}}

fill 5889 65 -3324 5887 65 -3319 minecraft:air