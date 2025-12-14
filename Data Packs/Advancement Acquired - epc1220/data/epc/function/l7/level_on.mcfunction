## SCOREBOARDS
scoreboard players set @a curr_level 7
scoreboard players set @a attempts 0

## SUMMON ENTITIES
# mobs
execute at @n[tag=ISLE4] run summon minecraft:creeper ~-7.2 ~-46.0 ~-3.8 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[-135f,0f],Tags:["l7","mob0"]}
execute at @n[tag=ISLE4] run summon minecraft:zombie ~-9.0 ~-12.0 ~-0.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[180f,0f],Tags:["l7","mob1"]}
execute at @n[tag=ISLE4] run summon minecraft:silverfish ~-6.8 ~-17.0 ~15.7 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[210f,0f],Tags:["l7","mob2"]}
execute at @n[tag=ISLE4] run summon minecraft:skeleton ~-13.0 ~-12.0 ~-9.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[180f,0f],Tags:["l7","mob3"], equipment:{mainhand:{count:1, id:"minecraft:bow"}}}
execute at @n[tag=ISLE4] run summon minecraft:spider ~-20.7 ~-13.0 ~-2.3 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Rotation:[-165f,15f], Tags:["l7","mob4"]}
execute at @n[tag=ISLE4] run summon minecraft:bat ~-6.0 ~-26.7 ~3.0 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Rotation:[0f,15f], Tags:["l7","mob5"]}

# noteblock markers
execute at @n[tag=ISLE4] run summon marker ~-18 ~-18 ~3 {Tags:["l7", "nb0", "nb"]}
execute at @n[tag=ISLE4] run summon marker ~-18 ~-18 ~2 {Tags:["l7", "nb1", "nb"]}
execute at @n[tag=ISLE4] run summon marker ~-18 ~-18 ~1 {Tags:["l7", "nb2", "nb"]}
execute at @n[tag=ISLE4] run summon marker ~-18 ~-18 ~0 {Tags:["l7", "nb3", "nb"]}
execute at @n[tag=ISLE4] run summon marker ~-18 ~-18 ~-1 {Tags:["l7", "nb4", "nb"]}
execute at @n[tag=ISLE4] run summon marker ~-18 ~-18 ~-2 {Tags:["l7", "nb5", "nb"]}

# solution markers
execute at @n[tag=ISLE4] run summon marker ~-6 ~-46 ~-5 {Tags:["l7", "sol0", "sol"]}
execute at @n[tag=ISLE4] run summon marker ~-9 ~-12 ~-2 {Tags:["l7", "sol1", "sol"]}
execute at @n[tag=ISLE4] run summon marker ~-6 ~-18 ~14 {Tags:["l7", "sol2", "sol"]}
execute at @n[tag=ISLE4] run summon marker ~-13 ~-12 ~-11 {Tags:["l7", "sol3", "sol"]}
execute at @n[tag=ISLE4] run summon marker ~-20 ~-15 ~-4 {Tags:["l7", "sol4", "sol"]}
execute at @n[tag=ISLE4] run summon marker ~-6 ~-28 ~4 {Tags:["l7", "sol5", "sol"]}

# check ans marker
execute at @n[tag=ISLE4] run summon marker ~-18 ~-18 ~-4 {Tags:["l7", "ans"]}
execute at @n[tag=ISLE4] run summon marker ~-16 ~-20 ~-4 {Tags:["l7", "ans_switch"]}

# indicator marker
execute at @n[tag=ISLE4] run summon marker ~-17 ~-19 ~-2 {Tags:["l7", "indicator"]}

# noteblock array power
execute at @n[tag=ISLE4] run summon marker ~-20 ~-20 ~-2 {Tags:["l7", "nb_array"]}

## OTHER
tag @a remove limbo
function epc:origin
tag @e[tag=ORIGIN] remove active
data merge storage minecraft:hint {l7:[0,0,0,0,0,0]}
execute at @n[tag=l7,tag=ORIGIN] run function epc:give_wool {lvl:7}
execute at @e[tag=l7,tag=ans_switch] run function epc:ans/trigger {lvl:7}
execute at @e[tag=l7,tag=indicator] run clone ~ ~-1 ~ ~ ~-1 ~5 ~ ~ ~
execute at @e[tag=l7,tag=nb_array] run setblock ~ ~ ~ minecraft:redstone_block
execute at @e[tag=l7,tag=sol] run setblock ~ ~-1 ~ minecraft:bone_block
execute at @e[tag=B6] run setblock ~ ~ ~ minecraft:air