## This function runs as and at a player when they are sent back to a checkpoint

# Tell player that they fell
playsound minecraft:entity.player.small_fall master @s ~ ~ ~ 100 1 1

tellraw @s {"text":"Oops! Looks like you fell...","color":"red"}