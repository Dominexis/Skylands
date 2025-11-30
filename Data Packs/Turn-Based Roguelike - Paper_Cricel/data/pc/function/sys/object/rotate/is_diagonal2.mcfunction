
# effect
rotate @s ~ ~

execute store result score #rot pc.main run data get entity @s Rotation[0] 10
scoreboard players operation #rot pc.main %= #900 sl.value

kill @s