## VISUAL/AUDIO EFFECTS
tellraw @a [{"text":"Puzzle 1 Complete!","color":"green"}]
execute at @e[tag=l1,tag=nb2] run particle flame ~ ~ ~ 0 0.15 2 0.15 35 normal
execute at @e[tag=l1,tag=nb2] run particle note ~ ~.75 ~ 0.4 0.0625 1.5 1 18 normal
execute at @e[tag=l1,tag=nb2] run particle lava ~ ~.5 ~ 0 0 2 1 20 normal
execute as @a at @a run playsound minecraft:block.note_block.bell block @s ~ ~ ~
execute as @a at @a run playsound minecraft:entity.firework_rocket.twinkle block @s ~ ~ ~

## NEXT LEVEL STUFF
bossbar set minecraft:overall value 1
tag @a add limbo
tag @n[tag=l2, tag=ORIGIN] add active

kill @e[tag=l1,tag=nb]
execute at @n[tag=l1,tag=ans] run function epc:reward

## UPDATE SOLUTION BLOCKS
execute at @e[tag=l1,tag=sol] run setblock ~ ~-1 ~ minecraft:emerald_block
execute at @e[tag=l1,tag=sol] run setblock ~ ~ ~ minecraft:air
execute at @e[tag=l1,tag=nb_array] run setblock ~ ~ ~ minecraft:red_concrete