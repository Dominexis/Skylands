## This function runs as the player and at the location of the checkpoint when they hit a checkpoint

# Send message that the player reached a checkpoint
playsound minecraft:entity.experience_orb.pickup master @s
tellraw @s {"text":"Checkpoint","color":"green"}