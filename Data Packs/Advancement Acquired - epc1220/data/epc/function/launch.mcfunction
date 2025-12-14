$summon minecraft:arrow ~ ~3 ~ {Tags:["f1"], Motion:[$(dx)f, $(dy)f, $(dz)f]}
ride @s mount @n[tag=f1]
title @s actionbar {"text":""}
particle minecraft:gust_emitter_small ~ ~2 ~ 0.5 .5 .5 1 5 normal
execute at @s anchored eyes run particle minecraft:explosion ~ ~2 ~ 0.5 0.5 0.5 1 5 normal
playsound minecraft:entity.breeze.wind_burst block @a
playsound minecraft:entity.firework_rocket.launch block @a

scoreboard objectives add launch dummy
$scoreboard players set epc_launch launch $(isle)
execute if score epc_launch launch matches -1 run execute at @n[tag=CENTER] run tp @e[type=armor_stand, tag=checkpoint] ~0 ~4 ~0 -150 -3
execute if score epc_launch launch matches 0 run execute at @n[tag=SPAWN] run tp @e[type=armor_stand, tag=checkpoint] ~0 ~4 ~0 -150 -3
execute if score epc_launch launch matches 1 run execute at @n[tag=ISLE1] run tp @e[type=armor_stand, tag=checkpoint] ~-16 ~3 ~21 -150 -3
execute if score epc_launch launch matches 2 run execute at @n[tag=ISLE2] run tp @e[type=armor_stand, tag=checkpoint] ~14 ~3 ~-1 90 -5
execute if score epc_launch launch matches 3 run execute at @n[tag=ISLE3] run tp @e[type=armor_stand, tag=checkpoint] ~-9 ~3 ~-9 -45 0
execute if score epc_launch launch matches 4 run execute at @n[tag=ISLE4] run tp @e[type=armor_stand, tag=checkpoint] ~21 ~3 ~-19 45 12
execute if score epc_launch launch matches 5 run execute at @n[tag=ISLE5] run tp @e[type=armor_stand, tag=checkpoint] ~-8 ~3 ~-21 -20 15
execute if score epc_launch launch matches 6 run execute at @n[tag=ISLE6] run tp @e[type=armor_stand, tag=checkpoint] ~-3 ~3 ~-23 0 30
scoreboard objectives remove launch