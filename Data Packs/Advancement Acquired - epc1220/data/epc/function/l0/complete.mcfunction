#execute at @e[tag=B0] run setblock ~ ~ ~ minecraft:beacon
execute at @e[tag=l1,tag=nb2] run particle flame ~ ~ ~ 0 0.15 2 0.15 35 normal
execute at @e[tag=l1,tag=nb2] run particle note ~ ~.75 ~ 0.4 0.0625 1.5 1 18 normal
execute at @e[tag=l1,tag=nb2] run particle lava ~ ~.5 ~ 0 0 2 1 20 normal
execute as @a at @a run playsound minecraft:block.note_block.bell block @s ~ ~ ~
execute as @a at @a run playsound minecraft:entity.firework_rocket.twinkle block @s ~ ~ ~

execute at @e[tag=I0] run setblock ~ ~1 ~ minecraft:light_weighted_pressure_plate
tag @e[tag=I0] add active
function epc:isle1/start
say tutorial complete!
clear @a sunflower
scoreboard players set @a total_attempts 0
scoreboard players set @a attempts 0
kill @e[tag=l0,tag=nb]

## UPDATE SOLUTION BLOCKS
execute at @e[tag=l0,tag=sol] run setblock ~ ~-1 ~ minecraft:emerald_block
execute at @e[tag=l0,tag=sol] run setblock ~ ~ ~ minecraft:air
execute at @e[tag=l0,tag=nb_array] run setblock ~ ~ ~ minecraft:red_concrete
