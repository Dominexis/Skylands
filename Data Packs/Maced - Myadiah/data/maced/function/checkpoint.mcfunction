## This function runs as the player and at the location of the checkpoint when they hit a checkpoint

playsound minecraft:entity.experience_orb.pickup master @s
title @s actionbar {"text":"Checkpoint!","color":"green"}
execute align xyz run particle minecraft:totem_of_undying ~0.5 ~ ~0.5 0.5 0.75 0.5 0.1 50 normal

execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["maced.checkpoint_marker"]}

execute positioned 1792 64 256 as @a[team=sl.player,tag=maced.in_game,distance=..250] at @s run function sl:api/set_checkpoint
setblock ~ ~-1 ~ diamond_block

scoreboard players add checkpoint_count maced.Scores 1

function maced:checkpoint_activator