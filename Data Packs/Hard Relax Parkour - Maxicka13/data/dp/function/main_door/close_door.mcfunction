scoreboard players set @s level 0
team join player @s
execute at @e[type=marker,tag=spawnpoint] run spawnpoint @s ~ ~ ~ 90 0
execute at @e[type=marker,tag=spDoor] if score $bool statusDoor matches 1 run clone ~ ~ ~ ~ ~2 ~2 ~ ~6 ~ filtered minecraft:spruce_fence move
execute if score $bool statusDoor matches 1 run scoreboard players set $bool statusDoor 0