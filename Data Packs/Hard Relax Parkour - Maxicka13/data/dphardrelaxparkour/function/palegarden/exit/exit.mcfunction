tp @s @e[tag=dphardrelaxparkour.spawnpoint_3,limit=1]

execute if score @s dphardrelaxparkour.level matches 6 run return fail
scoreboard players remove $quantity dphardrelaxparkour.playersinpg 1
execute if score $quantity dphardrelaxparkour.playersinpg matches 0 run kill @e[tag=dphardrelaxparkour.security]
execute if score $quantity dphardrelaxparkour.playersinpg matches 0 run scoreboard players remove $quantity dphardrelaxparkour.creakings 7

tag Maxicka13 remove dphardrelaxparkour.lost
tag Maxicka13 add dphardrelaxparkour.player

effect clear @s darkness
scoreboard players add @s dphardrelaxparkour.level 1