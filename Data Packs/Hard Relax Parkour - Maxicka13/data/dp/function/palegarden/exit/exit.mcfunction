tp @s @e[tag=spawnpoint_3,limit=1]

scoreboard players remove $quantity PlayersInPG 1

execute if score @s level matches 6 run return fail
execute if score $quantity PlayersInPG matches 0 run kill @e[tag=security]

team join player @s
effect clear @s darkness
scoreboard players add @s level 1