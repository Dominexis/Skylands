scoreboard players set @s dphardrelaxparkour.level 0
scoreboard objectives setdisplay sidebar dphardrelaxparkour.level
team join dphardrelaxparkour.player @s
execute at @e[type=marker,tag=dphardrelaxparkour.startspawnpoint] run spawnpoint @s ~ ~ ~ 90 0
execute at @e[type=marker,tag=dphardrelaxparkour.spdoor] run clone ~ ~ ~ ~ ~2 ~2 ~ ~6 ~ filtered minecraft:spruce_fence move