## This function runs as and at a player when they collect the collectible at the end of the plot

execute as @a run title @s title ["",{"text":"Thanks for playing ","color":"green"},{"text":"Maced","bold":true,"color":"blue"}]
execute as @a at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1