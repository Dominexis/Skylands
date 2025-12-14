## SCOREBOARDS
scoreboard players set @a curr_level 1
scoreboard players set @a attempts 0

## SUMMON ENTITIES
# mobs
execute at @n[tag=ISLE1] run summon minecraft:villager ~-28.5 ~1 ~1.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[-112f,0f],Tags:["l1","mob0"]}
execute at @n[tag=ISLE1] run summon minecraft:iron_golem ~-16.5 ~0 ~-4 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[70f,0f],Tags:["l1","mob1"]}
execute at @n[tag=ISLE1] run summon minecraft:horse ~-13 ~0 ~16 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[45f,0f],Tags:["l1","mob2"]}
execute at @n[tag=ISLE1] run summon minecraft:cat ~-24 ~0 ~-12 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[-30f,0f],Tags:["l1","mob3"]}
execute at @n[tag=ISLE1] run summon minecraft:zombie_villager ~-10 ~2 ~-9 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[90f,0f],CustomName:"Dinnerbone", Tags:["l1","mob4"]}
team join invis @e[type=minecraft:zombie_villager, tag=mob4,tag=l1]

# noteblock markers
execute at @n[tag=ISLE1] run summon marker ~-24 ~0 ~14 {Tags:["l1", "nb1", "nb"]}
execute at @n[tag=ISLE1] run summon marker ~-24 ~0 ~15 {Tags:["l1", "nb0", "nb"]}
execute at @n[tag=ISLE1] run summon marker ~-24 ~0 ~13 {Tags:["l1", "nb2", "nb"]}
execute at @n[tag=ISLE1] run summon marker ~-24 ~0 ~12 {Tags:["l1", "nb3", "nb"]}
execute at @n[tag=ISLE1] run summon marker ~-24 ~0 ~11 {Tags:["l1", "nb4", "nb"]}

# solution markers
execute at @n[tag=ISLE1] run summon marker ~-28 ~1 ~0 {Tags:["l1", "sol0", "sol"]}
execute at @n[tag=ISLE1] run summon marker ~-18 ~0 ~-3 {Tags:["l1", "sol1", "sol"]}
execute at @n[tag=ISLE1] run summon marker ~-15 ~0 ~17 {Tags:["l1", "sol2", "sol"]}
execute at @n[tag=ISLE1] run summon marker ~-25 ~0 ~-11 {Tags:["l1", "sol3", "sol"]}
execute at @n[tag=ISLE1] run summon marker ~-11 ~1 ~-9 {Tags:["l1", "sol4", "sol"]}

# check ans marker
execute at @n[tag=ISLE1] run summon marker ~-24 ~0 ~9 {Tags:["l1", "ans"]}
execute at @n[tag=ISLE1] run summon marker ~-22 ~-2 ~9 {Tags:["l1", "ans_switch"]}

# indicator marker
execute at @n[tag=ISLE1] run summon marker ~-23 ~-1 ~11 {Tags:["l1", "indicator"]}

# noteblock array power
execute at @n[tag=ISLE1] run summon marker ~-26 ~-2 ~11 {Tags:["l1", "nb_array"]}

## OTHER
tag @a remove limbo
function epc:origin
tag @e[tag=ORIGIN] remove active
data merge storage minecraft:hint {l1:[0,0,0,0,0,1]}
execute at @n[tag=l1,tag=ORIGIN] run function epc:give_wool {lvl:1}
execute at @e[tag=l1,tag=ans_switch] run function epc:ans/trigger {lvl:1}
execute at @e[tag=l1,tag=indicator] run clone ~ ~-1 ~ ~ ~-1 ~4 ~ ~ ~
execute at @e[tag=l1,tag=nb_array] run setblock ~ ~ ~ minecraft:redstone_block
execute at @e[tag=l1,tag=sol] run setblock ~ ~-1 ~ minecraft:bone_block
execute at @e[tag=B1] run setblock ~ ~ ~ minecraft:air