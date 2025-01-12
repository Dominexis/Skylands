# Mark checkpoint
tag @s add sl.plate_checkpoint_cooldown
playsound minecraft:entity.experience_orb.pickup master @s
tellraw @s {"text":"Checkpoint","color":"green"}

execute positioned ~-0.2375 ~ ~-0.2375 if block ~ ~ ~ #sl:plate_checkpoint run return run function sl:api/set_checkpoint
execute positioned ~00.2375 ~ ~-0.2375 if block ~ ~ ~ #sl:plate_checkpoint run return run function sl:api/set_checkpoint
execute positioned ~-0.2375 ~ ~00.2375 if block ~ ~ ~ #sl:plate_checkpoint run return run function sl:api/set_checkpoint
execute positioned ~00.2375 ~ ~00.2375 if block ~ ~ ~ #sl:plate_checkpoint run return run function sl:api/set_checkpoint

function sl:api/set_checkpoint