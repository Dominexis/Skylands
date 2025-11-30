
# effect
rotate @s ~ 0
execute store result score #Rotation[0] pc.main run data get entity @s Rotation[0] 100

scoreboard players add #Rotation[0] pc.main 2249
scoreboard players operation #Rotation[0] pc.main /= #4500 sl.value
scoreboard players operation #Rotation[0] pc.main *= #4500 sl.value

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #Rotation[0] pc.main