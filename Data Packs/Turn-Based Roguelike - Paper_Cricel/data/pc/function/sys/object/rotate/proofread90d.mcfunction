
# effect
tag @s add pc.sys.rotate_diagonal
rotate @s ~ 0
execute store result score #Rotation[0] pc.main run data get entity @s Rotation[0] 100

scoreboard players add #Rotation[0] pc.main 4499
scoreboard players operation #Rotation[0] pc.main /= #9000 sl.value
scoreboard players operation #Rotation[0] pc.main *= #9000 sl.value
scoreboard players add #Rotation[0] pc.main 4500

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #Rotation[0] pc.main