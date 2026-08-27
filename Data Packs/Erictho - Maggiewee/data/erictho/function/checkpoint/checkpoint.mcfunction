#This function runs as the player and at the location of the erictho_checkpoint when they hit a erictho_checkpoint
#execute if score @s erictho_checkpoint < player erictho_checkpoint run setblock ~ ~-3 ~ redstone_lamp[lit=false] replace
execute if score @s erictho.checkpoint matches 0 run setblock ~ ~-3 ~ redstone_lamp[lit=false] replace
execute at @s if block ~ ~-3 ~ redstone_lamp[lit=false] as @s run function erictho:checkpoint/off

execute at @s if block ~ ~-3 ~ redstone_lamp[lit=true] if score erictho.player erictho.checkpoint > @s erictho.checkpoint as @s run function erictho:checkpoint/on
