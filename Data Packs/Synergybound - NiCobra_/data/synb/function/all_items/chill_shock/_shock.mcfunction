execute unless entity @e[type=!minecraft:player,tag=synb.type.enemy,distance=..4] run return 0
scoreboard players add @e[type=!minecraft:player,tag=synb.type.enemy,distance=..4] synb.Status.Frozen 40
particle minecraft:block{block_state:"minecraft:snow"} ~ ~ ~ 2 0 2 0.2 100
playsound minecraft:entity.breeze.idle_ground neutral @a ~ ~ ~ 1 1.8