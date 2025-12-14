## SCOREBOARDS
scoreboard players set @a curr_level 8
scoreboard players set @a attempts 0

## SUMMON ENTITIES
# mobs
execute at @n[tag=ISLE5] run summon minecraft:strider ~-11.0 ~-18.3 ~1.2 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Rotation:[-10,0f],Tags:["l8","mob0"]}
execute at @n[tag=ISLE5] run summon minecraft:piglin ~-3.9 ~-21.0 ~-7.9 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[-50f,0f],Tags:["l8","mob1"], equipment:{mainhand:{count:1, id:"minecraft:golden_sword"}}}
execute at @n[tag=ISLE5] run summon minecraft:blaze ~18.0 ~-15.5 ~-7.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Rotation:[90f,10f],Tags:["l8","mob2"]}
execute at @n[tag=ISLE5] run summon minecraft:zombified_piglin ~-0.74 ~-13 ~18.16 {NoAI:1b,Silent:1b,PersistenceRequired:1b,OnGround:1b,Invulnerable:1b,OnGround:1b,Rotation:[110f,0f],Tags:["l8","mob3"], equipment:{mainhand:{count:1, id:"minecraft:golden_sword"}}}
execute at @n[tag=ISLE5] run summon minecraft:ghast ~5.5 ~-18.75 ~9.65 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Rotation:[-180f,0f], Tags:["l8","mob4"]}
execute at @n[tag=ISLE5] run summon minecraft:wither_skeleton ~11.5 ~-16 ~17 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[180f,5f], Tags:["l8","mob5"], equipment:{mainhand:{count:1, id:"minecraft:stone_sword"}}}

# noteblock markers
execute at @n[tag=ISLE5] run summon marker ~10 ~-31 ~3 {Tags:["l8", "nb0", "nb"]}
execute at @n[tag=ISLE5] run summon marker ~10 ~-31 ~4 {Tags:["l8", "nb1", "nb"]}
execute at @n[tag=ISLE5] run summon marker ~10 ~-31 ~5 {Tags:["l8", "nb2", "nb"]}
execute at @n[tag=ISLE5] run summon marker ~10 ~-31 ~6 {Tags:["l8", "nb3", "nb"]}
execute at @n[tag=ISLE5] run summon marker ~10 ~-31 ~7 {Tags:["l8", "nb4", "nb"]}
execute at @n[tag=ISLE5] run summon marker ~10 ~-31 ~8 {Tags:["l8", "nb5", "nb"]}

# solution markers
execute at @n[tag=ISLE5] run summon marker ~-11 ~-18 ~3 {Tags:["l8", "sol0", "sol"]}
execute at @n[tag=ISLE5] run summon marker ~-3 ~-21 ~-7 {Tags:["l8", "sol1", "sol"]}
execute at @n[tag=ISLE5] run summon marker ~16 ~-16 ~-8 {Tags:["l8", "sol2", "sol"]}
execute at @n[tag=ISLE5] run summon marker ~-3 ~-13 ~17 {Tags:["l8", "sol3", "sol"]}
execute at @n[tag=ISLE5] run summon marker ~5 ~-19 ~4 {Tags:["l8", "sol4", "sol"]}
execute at @n[tag=ISLE5] run summon marker ~11 ~-16 ~15 {Tags:["l8", "sol5", "sol"]}

# check ans marker
execute at @n[tag=ISLE5] run summon marker ~10.5 ~-31 ~1.5 {Tags:["l8", "ans"]}
execute at @n[tag=ISLE5] run summon marker ~8 ~-33 ~1 {Tags:["l8", "ans_switch"]}

# indicator marker
execute at @n[tag=ISLE5] run summon marker ~9 ~-32 ~3 {Tags:["l8", "indicator"]}

# noteblock array power
execute at @n[tag=ISLE5] run summon marker ~12 ~-33 ~3 {Tags:["l8", "nb_array"]}

## OTHER
tag @a remove limbo
function epc:origin
tag @e[tag=ORIGIN] remove active
data merge storage minecraft:hint {l8:[0,0,0,0,0,0]}
execute at @n[tag=l8,tag=ORIGIN] run function epc:give_wool {lvl:8}
execute at @e[tag=l8,tag=ans_switch] run function epc:ans/trigger {lvl:8}
execute at @e[tag=l8,tag=indicator] run clone ~ ~-1 ~ ~ ~-1 ~5 ~ ~ ~
execute at @e[tag=l8,tag=nb_array] run setblock ~ ~ ~ minecraft:redstone_block
execute at @e[tag=l8,tag=sol] run setblock ~ ~-1 ~ minecraft:bone_block