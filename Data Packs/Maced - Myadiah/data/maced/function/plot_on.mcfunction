## This function runs when the plot turns on
scoreboard objectives add maced.jump_pad dummy
scoreboard objectives add maced.Scores dummy
scoreboard objectives add maced.Ylevel dummy

scoreboard objectives add maced.info_trigger trigger
scoreboard objectives add maced.info dummy

scoreboard players set checkpoint_count maced.Scores 0

execute positioned 1792 64 256 as @e[type=marker,tag=maced.checkpoint_marker,distance=..250] at @s run setblock ~ ~-1 ~ gold_block
execute positioned 1792 64 256 as @e[type=marker,tag=maced.checkpoint_marker,distance=..250] at @s run kill @s

execute positioned 1792 64 256 run kill @e[type=pig,tag=maced.mob,distance=..250]
execute positioned 1792 64 256 run kill @e[type=item,distance=..250]

summon item 1792 65 256 {Glowing:1b,Age:-32768,Invulnerable:1b,Item:{id:"minecraft:mace",count:1,components:{"minecraft:enchantments":{"minecraft:wind_burst":1},"minecraft:unbreakable":{}}}}

fill 1793 65 260 1791 65 265 air