## SCOREBOARDS
scoreboard players set @a curr_level 3
scoreboard players set @a attempts 0

## SUMMON ENTITIES
# mobs
execute at @n[tag=ISLE1] run summon minecraft:vindicator ~7 ~7 ~-28 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Tags:["l3","mob0"],CustomName:"Johnny"}
execute at @n[tag=ISLE1] run summon minecraft:vex ~14.3 ~1 ~-24.7 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[-45f,0f],Tags:["l3","mob1"]}
execute at @n[tag=ISLE1] run summon minecraft:evoker ~15.5 ~13 ~-17 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[-130f,0f],Tags:["l3","mob2"]}
execute at @n[tag=ISLE1] run summon minecraft:ravager ~12.5 ~0 ~-6 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[150f,0f],Tags:["l3","mob3"],CustomName:"Snowflake"}

# noteblock markers
execute at @n[tag=ISLE1] run summon marker ~10 ~0 ~1 {Tags:["l3", "nb0", "nb"]}
execute at @n[tag=ISLE1] run summon marker ~10 ~0 ~0 {Tags:["l3", "nb1", "nb"]}
execute at @n[tag=ISLE1] run summon marker ~10 ~0 ~-1 {Tags:["l3", "nb2", "nb"]}
execute at @n[tag=ISLE1] run summon marker ~10 ~0 ~-2 {Tags:["l3", "nb3", "nb"]}

# solution markers
execute at @n[tag=ISLE1] run summon marker ~7 ~7 ~-27 {Tags:["l3", "sol0", "sol"]}
execute at @n[tag=ISLE1] run summon marker ~15 ~0 ~-24 {Tags:["l3", "sol1", "sol"]}
execute at @n[tag=ISLE1] run summon marker ~17 ~13 ~-18 {Tags:["l3", "sol2", "sol"]}
execute at @n[tag=ISLE1] run summon marker ~11 ~0 ~-8 {Tags:["l3", "sol3", "sol"]}

# check ans marker
execute at @n[tag=ISLE1] run summon marker ~10 ~0 ~3 {Tags:["l3", "ans"]}
execute at @n[tag=ISLE1] run summon marker ~12 ~-2 ~3 {Tags:["l3", "ans_switch"]}

# indicator marker
execute at @n[tag=ISLE1] run summon marker ~11 ~-1 ~-2 {Tags:["l3", "indicator"]}

# noteblock array power
execute at @n[tag=ISLE1] run summon marker ~8 ~-2 ~-2 {Tags:["l3", "nb_array"]}

## OTHER
tag @a remove limbo
function epc:origin
tag @e[tag=ORIGIN] remove active
data merge storage minecraft:hint {l3:[0,0,0,0,1,1]}
execute at @n[tag=l3,tag=ORIGIN] run function epc:give_wool {lvl:3}
execute at @e[tag=l3,tag=ans_switch] run function epc:ans/trigger {lvl:3}
execute at @e[tag=l3,tag=indicator] run clone ~ ~-1 ~ ~ ~-1 ~3 ~ ~ ~
execute at @e[tag=l3,tag=nb_array] run setblock ~ ~ ~ minecraft:redstone_block
execute at @e[tag=l3,tag=sol] run setblock ~ ~-1 ~ minecraft:bone_block
execute at @e[tag=B2] run setblock ~ ~ ~ minecraft:air