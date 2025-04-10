## This function runs as and at a player when they are sent back to a checkpoint

# Tell player that they fell
playsound minecraft:entity.generic.splash master @s
tellraw @s {"text":"Let's get ya back up, eh?","color":"#EFABEF"}