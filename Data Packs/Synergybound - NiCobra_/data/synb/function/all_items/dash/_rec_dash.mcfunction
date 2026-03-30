# Block checks
execute unless block ~ ~ ~ minecraft:air run scoreboard players set #dest synb.Tmp.Arg 0
execute unless block ~-0.3 ~ ~ minecraft:air run scoreboard players set #dest synb.Tmp.Arg 0
execute unless block ~0.3 ~ ~ minecraft:air run scoreboard players set #dest synb.Tmp.Arg 0
execute unless block ~ ~ ~-0.3 minecraft:air run scoreboard players set #dest synb.Tmp.Arg 0
execute unless block ~ ~ ~0.3 minecraft:air run scoreboard players set #dest synb.Tmp.Arg 0
execute unless block ~ ~1 ~ minecraft:air run scoreboard players set #dest synb.Tmp.Arg 0
execute unless block ~-0.3 ~1 ~ minecraft:air run scoreboard players set #dest synb.Tmp.Arg 0
execute unless block ~0.3 ~1 ~ minecraft:air run scoreboard players set #dest synb.Tmp.Arg 0
execute unless block ~ ~1 ~-0.3 minecraft:air run scoreboard players set #dest synb.Tmp.Arg 0
execute unless block ~ ~1 ~0.3 minecraft:air run scoreboard players set #dest synb.Tmp.Arg 0


execute if block ~ ~ ~ minecraft:structure_void run scoreboard players set #dest synb.Tmp.Arg 0

particle minecraft:poof ~ ~-0.2 ~ 0 0.3 0 0.1 2

execute unless score #dest synb.Tmp.Arg matches 1.. positioned ^ ^ ^-0.5 run function synb:all_items/dash/_dash_end
execute unless score #dest synb.Tmp.Arg matches 1.. run return 0

execute positioned ~ ~-0.5 ~ as @e[type=!minecraft:player,tag=synb.type.enemy,tag=!synb.arg.damaged,distance=..2.2] run function synb:all_items/dash/_affected

scoreboard players remove #dest synb.Tmp.Arg 1
execute positioned ^ ^ ^0.25 run function synb:all_items/dash/_rec_dash