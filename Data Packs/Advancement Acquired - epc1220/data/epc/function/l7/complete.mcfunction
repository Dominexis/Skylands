## VISUAL/AUDIO EFFECTS
tellraw @a [{"text":"Puzzle 7 Complete!","color":"green"}]
execute at @e[tag=l7,tag=nb3] run particle flame ~ ~ ~.5 0 0.15 3 0.15 35 normal
execute at @e[tag=l7,tag=nb3] run particle note ~ ~.75 ~.5 0.4 0.0625 2.5 1 18 normal
execute at @e[tag=l7,tag=nb3] run particle lava ~ ~.5 ~.5 0 0 3 1 20 normal
execute as @a at @a run playsound minecraft:block.note_block.bell block @s ~ ~ ~
execute as @a at @a run playsound minecraft:entity.firework_rocket.twinkle block @s ~ ~ ~

## NEXT LEVEL STUFF
bossbar set minecraft:overall value 7
tag @a add limbo
tag @n[tag=l8, tag=ORIGIN] add active
tag @e[tag=I4, tag=LEAVE] add active
say nether portal unlocked
execute at @e[tag=ISLE4] positioned ~-8 ~-33 ~-4 run function epc:portal {id:"1a"}
execute at @e[tag=ISLE5] positioned ~-3 ~-29 ~-6 run function epc:portal {id:"1b"}
execute at @e[tag=ISLE4] positioned ~-7 ~-33 ~-4 run fill ~ ~ ~ ~ ~3 ~2 minecraft:air

kill @e[tag=l7,tag=nb]
execute at @n[tag=l7,tag=ans] run function epc:reward
effect give @a minecraft:fire_resistance infinite 255 true

## UPDATE SOLUTION BLOCKS
execute at @e[tag=l7,tag=sol] run setblock ~ ~-1 ~ minecraft:emerald_block
execute at @e[tag=l7,tag=sol] run setblock ~ ~ ~ minecraft:air
execute at @e[tag=l7,tag=nb_array] run setblock ~ ~ ~ minecraft:red_concrete

execute at @e[tag=I4,tag=LEAVE] run setblock ~ ~ ~ minecraft:gold_block
execute at @e[tag=I4,tag=LEAVE] run setblock ~ ~1 ~ minecraft:light_weighted_pressure_plate