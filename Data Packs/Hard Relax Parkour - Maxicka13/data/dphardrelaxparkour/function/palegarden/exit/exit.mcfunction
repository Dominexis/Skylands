tp @s @e[tag=dphardrelaxparkour.spawnpoint_3,limit=1]

scoreboard players remove $quantity dphardrelaxparkour.playersinpg 1

execute if score @s dphardrelaxparkour.level matches 6 run return fail
execute if score $quantity dphardrelaxparkour.playersinpg matches 0 run kill @e[tag=dphardrelaxparkour.security]
execute if score $quantity dphardrelaxparkour.playersinpg matches 0 run scoreboard players remove $quantity dphardrelaxparkour.creakings 7


team join dphardrelaxparkour.player @s
effect clear @s darkness
scoreboard players add @s dphardrelaxparkour.level 1