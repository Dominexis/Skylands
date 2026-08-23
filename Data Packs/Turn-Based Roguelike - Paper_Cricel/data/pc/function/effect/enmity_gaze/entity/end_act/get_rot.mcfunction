
execute store result score #offset pc.main run data get entity @s Rotation[0]

scoreboard players operation #offset pc.main -= #rot pc.main
execute if score #offset pc.main matches 181.. run scoreboard players remove #offset pc.main 360
execute if score #offset pc.main matches ..-180 run scoreboard players add #offset pc.main 360