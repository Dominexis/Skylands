spawnpoint @s ~ ~ ~ ~ ~

playsound minecraft:entity.creaking.ambient block @s ~ ~ ~ 10 0.5

tellraw @s [{"text":"Checkpoint set","italic":true,"color":"green"}]

#new
scoreboard players add @s erictho_checkpoint 1
