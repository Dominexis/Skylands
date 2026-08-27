
rotate @s ~ 0

execute store result score @s pc.animation run scoreboard players add #entity.ender_dragon.debuff2.wave.index pc.main 1
scoreboard players operation @s pc.animation %= #15 sl.value