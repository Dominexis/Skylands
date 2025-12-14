## VISUAL/AUDIO EFFECTS
tellraw @a [{"text":"Puzzle 8 Complete!","color":"green"}]
execute at @e[tag=l8,tag=nb3] run particle flame ~ ~ ~.5 0 0.15 3 0.15 35 normal
execute at @e[tag=l8,tag=nb3] run particle note ~ ~.75 ~.5 0.4 0.0625 2.5 1 18 normal
execute at @e[tag=l8,tag=nb3] run particle lava ~ ~.5 ~.5 0 0 3 1 20 normal
execute as @a at @a run playsound minecraft:block.note_block.bell block @s ~ ~ ~
execute as @a at @a run playsound minecraft:entity.firework_rocket.twinkle block @s ~ ~ ~

## NEXT LEVEL STUFF
bossbar set minecraft:overall value 8
tag @a add limbo
tag @n[tag=l9, tag=ORIGIN] add active
say nether portal unlocked
execute at @e[tag=ISLE5] positioned ~-10 ~-14 ~-15 run function epc:portal {id:"2"}
execute at @e[tag=ISLE5] positioned ~-11 ~-14 ~-15 run fill ~ ~ ~ ~ ~3 ~2 minecraft:air

tag @e[tag=I5, tag=ENTER] add active
execute at @e[tag=I5,tag=ENTER] run setblock ~ ~1 ~ minecraft:light_weighted_pressure_plate

kill @e[tag=l8,tag=nb]
execute at @n[tag=l8,tag=ans] run function epc:reward

## UPDATE SOLUTION BLOCKS
execute at @e[tag=l8,tag=sol] run setblock ~ ~-1 ~ minecraft:emerald_block
execute at @e[tag=l8,tag=sol] run setblock ~ ~ ~ minecraft:air
execute at @e[tag=l8,tag=nb_array] run setblock ~ ~ ~ minecraft:red_concrete