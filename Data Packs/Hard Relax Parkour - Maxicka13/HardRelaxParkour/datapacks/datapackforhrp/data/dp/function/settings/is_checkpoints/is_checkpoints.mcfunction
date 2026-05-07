# delete data
data remove entity @s interaction
data remove entity @s attack 

kill @e[tag=ischeckpoints]

execute if score $bool isCheckpoints matches 1 run function dp:settings/is_checkpoints/is_checkpoints_off
execute if score $bool isCheckpoints matches 0 if score $bool isCheckpointsButton matches 0 run function dp:settings/is_checkpoints/is_checkpoints_on

scoreboard players set $bool isCheckpointsButton 0
