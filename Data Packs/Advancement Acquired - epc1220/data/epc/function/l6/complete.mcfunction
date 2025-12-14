## VISUAL/AUDIO EFFECTS
tellraw @a [{"text":"Puzzle 6 Complete!","color":"green"}]
execute at @e[tag=l6,tag=nb3] run particle flame ~ ~ ~.5 0 0.15 3 0.15 35 normal
execute at @e[tag=l6,tag=nb3] run particle note ~ ~.75 ~.5 0.4 0.0625 2.5 1 18 normal
execute at @e[tag=l6,tag=nb3] run particle lava ~ ~.5 ~.5 0 0 3 1 20 normal
execute as @a at @a run playsound minecraft:block.note_block.bell block @s ~ ~ ~
execute as @a at @a run playsound minecraft:entity.firework_rocket.twinkle block @s ~ ~ ~

## NEXT LEVEL STUFF
bossbar set minecraft:overall value 6
tag @a add limbo
tag @n[tag=l7, tag=ORIGIN] add active
execute at @e[tag=B6] run setblock ~ ~ ~ minecraft:beacon
say swim to cave under witch hut for next level! 
kill @e[tag=l6,tag=nb]
execute at @n[tag=l6,tag=ans] run function epc:reward

## UPDATE SOLUTION BLOCKS
execute at @e[tag=l6,tag=sol] run setblock ~ ~-1 ~ minecraft:emerald_block
execute at @e[tag=l6,tag=sol] run setblock ~ ~ ~ minecraft:air
execute at @e[tag=l6,tag=nb_array] run setblock ~ ~ ~ minecraft:red_concrete