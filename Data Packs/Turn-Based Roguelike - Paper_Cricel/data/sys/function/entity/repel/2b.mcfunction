
execute if score #is_diagonal pc.main matches 0 run tp @s ^ ^0.25 ^0.3361445
execute if score #is_diagonal pc.main matches 1 run tp @s ^ ^0.25 ^0.475308323

data modify entity @e[tag=pc.sys.object.motion.summon,type=minecraft:item,limit=1] Motion set from entity @s Pos

kill @s