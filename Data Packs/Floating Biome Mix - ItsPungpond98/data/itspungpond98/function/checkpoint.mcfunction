## This function runs as the player and at the location of the checkpoint when they hit a checkpoint

# Send message that the player reached a checkpoint
playsound minecraft:entity.experience_orb.pickup master @s
tellraw @s {"text":"Checkpoint","color":"green"}

# Display particles on the pressure plate
execute align xyz run particle minecraft:totem_of_undying ~0.5 ~ ~0.5 0.3 0 0.3 0.5 50