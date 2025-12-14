## VISUAL/AUDIO EFFECTS
tellraw @a [{"text":"Puzzle 3 Complete!","color":"green"}]
execute at @e[tag=l3,tag=nb1] run particle flame ~ ~ ~.5 0 0.15 1.5 0.15 35 normal
execute at @e[tag=l3,tag=nb1] run particle note ~ ~.75 ~.5 0.4 0.0625 1 1 18 normal
execute at @e[tag=l3,tag=nb1] run particle lava ~ ~.5 ~.5 0 0 1.5 1 20 normal
execute as @a at @a run playsound minecraft:block.note_block.bell block @s ~ ~ ~
execute as @a at @a run playsound minecraft:entity.firework_rocket.twinkle block @s ~ ~ ~

## NEXT LEVEL STUFF
bossbar set minecraft:overall value 3
tag @a add limbo
tag @n[tag=I1,tag=LEAVE] add active
function epc:isle2/start
function epc:isle6/start

kill @e[tag=l3,tag=nb]
execute at @n[tag=l3,tag=ans] run function epc:reward

## UPDATE SOLUTION BLOCKS
execute at @e[tag=l3,tag=sol] run setblock ~ ~-1 ~ minecraft:emerald_block
execute at @e[tag=l3,tag=sol] run setblock ~ ~ ~ minecraft:air
execute at @e[tag=l3,tag=nb_array] run setblock ~ ~ ~ minecraft:red_concrete

execute at @e[tag=I1,tag=LEAVE] run setblock ~ ~ ~ minecraft:gold_block
execute at @e[tag=I1,tag=LEAVE] run setblock ~ ~1 ~ minecraft:light_weighted_pressure_plate