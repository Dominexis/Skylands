## SCOREBOARDS
scoreboard players set @a curr_level 4
scoreboard players set @a attempts 0

## SUMMON ENTITIES
# mobs
execute at @n[tag=ISLE2] run summon minecraft:goat ~3.0 ~10 ~-11 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[90f,0f],Tags:["l4","mob0"]}
execute at @n[tag=ISLE2] run summon minecraft:stray ~-12 ~0 ~-11 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[45f,0f],Tags:["l4","mob1"]}
execute at @n[tag=ISLE2] run summon minecraft:polar_bear ~-11 ~0 ~0.0 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[180f,0f],Tags:["l4","mob2"],CustomName:"Bertha"}
execute at @n[tag=ISLE2] run summon minecraft:frog ~-14 ~0 ~8.0 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[-45f,0f],Tags:["l4","mob3"], variant:"cold"}
execute at @n[tag=ISLE2] run summon minecraft:snow_golem ~0 ~0 ~-2.6 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[-60f,0f], Tags:["l4","mob4"], Pumpkin:0b, CustomName:"Jerry"}
execute at @n[tag=ISLE2] run summon minecraft:fox ~-11 ~3 ~3.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[180f,0f], Tags:["l4","mob5"],Type:"snow", Sitting:1b}

# rotate goat in 15° increments because of game bug
execute as @n[type=goat,tag=l4] at @s run tp @s ~ ~ ~ 90 ~
execute as @n[type=goat,tag=l4] at @s run tp @s ~ ~ ~ 90 ~
execute as @n[type=goat,tag=l4] at @s run tp @s ~ ~ ~ 90 ~
execute as @n[type=goat,tag=l4] at @s run tp @s ~ ~ ~ 90 ~
execute as @n[type=goat,tag=l4] at @s run tp @s ~ ~ ~ 90 ~
execute as @n[type=goat,tag=l4] at @s run tp @s ~ ~ ~ 90 ~

# noteblock markers
execute at @n[tag=ISLE2] run summon marker ~9 ~0 ~3 {Tags:["l4", "nb0", "nb"]}
execute at @n[tag=ISLE2] run summon marker ~9 ~0 ~2 {Tags:["l4", "nb1", "nb"]}
execute at @n[tag=ISLE2] run summon marker ~9 ~0 ~1 {Tags:["l4", "nb2", "nb"]}
execute at @n[tag=ISLE2] run summon marker ~9 ~0 ~0 {Tags:["l4", "nb3", "nb"]}
execute at @n[tag=ISLE2] run summon marker ~9 ~0 ~-1 {Tags:["l4", "nb4", "nb"]}
execute at @n[tag=ISLE2] run summon marker ~9 ~0 ~-2 {Tags:["l4", "nb5", "nb"]}

# solution markers
execute at @n[tag=ISLE2] run summon marker ~1 ~10 ~-11 {Tags:["l4", "sol0", "sol"]}
execute at @n[tag=ISLE2] run summon marker ~-13 ~0 ~-10 {Tags:["l4", "sol1", "sol"]}
execute at @n[tag=ISLE2] run summon marker ~-11 ~0 ~-3 {Tags:["l4", "sol2", "sol"]}
execute at @n[tag=ISLE2] run summon marker ~-13 ~0 ~9 {Tags:["l4", "sol3", "sol"]}
execute at @n[tag=ISLE2] run summon marker ~1 ~0 ~-2 {Tags:["l4", "sol4", "sol"]}
execute at @n[tag=ISLE2] run summon marker ~-11 ~3 ~2 {Tags:["l4", "sol5", "sol"]}

# check ans marker
execute at @n[tag=ISLE2] run summon marker ~9 ~0 ~-4 {Tags:["l4", "ans"]}
execute at @n[tag=ISLE2] run summon marker ~11 ~-2 ~-4 {Tags:["l4", "ans_switch"]}

# indicator marker
execute at @n[tag=ISLE2] run summon marker ~10 ~-1 ~-2 {Tags:["l4", "indicator"]}

# noteblock array power
execute at @n[tag=ISLE2] run summon marker ~7 ~-2 ~-2 {Tags:["l4", "nb_array"]}

## OTHER
tag @a remove limbo
function epc:origin
tag @e[tag=ORIGIN] remove active
data merge storage minecraft:hint {l4:[0,0,0,0,0,0]}
execute at @n[tag=l4,tag=ORIGIN] run function epc:give_wool {lvl:4}
execute at @e[tag=l4,tag=ans_switch] run function epc:ans/trigger {lvl:4}
execute at @e[tag=l4,tag=indicator] run clone ~ ~-1 ~ ~ ~-1 ~5 ~ ~ ~
execute at @e[tag=l4,tag=nb_array] run setblock ~ ~ ~ minecraft:redstone_block
execute at @e[tag=l4,tag=sol] run setblock ~ ~-1 ~ minecraft:bone_block
execute at @e[tag=B3b] run setblock ~ ~ ~ minecraft:air
