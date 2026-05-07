# delete data
data remove entity @s interaction
data remove entity @s attack 

execute at @e[type=marker,tag=fpDoor] run clone ~ ~ ~ ~ ~2 ~2 ~ ~-6 ~ filtered minecraft:spruce_fence move
execute if score $bool statusDoor matches 0 run scoreboard players set $bool statusDoor 1