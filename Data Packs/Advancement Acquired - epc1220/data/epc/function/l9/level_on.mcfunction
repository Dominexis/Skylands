## SCOREBOARDS
scoreboard players set @a curr_level 9
scoreboard players set @a attempts 0

## SUMMON ENTITIES
# mobs
execute at @n[tag=ISLE5] run summon minecraft:axolotl ~8.7 ~-9.12 ~-7.1 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Rotation:[-20f,15f],Tags:["l9","mob0"],Variant:2}
execute at @n[tag=ISLE5] run summon minecraft:dolphin ~17 ~-3.85 ~2 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Rotation:[20f,0f],Tags:["l9","mob1"]}
execute at @n[tag=ISLE5] run summon minecraft:pufferfish ~-5 ~-4.82 ~17.85 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Rotation:[135f,15f],Tags:["l9","mob2"],PuffState:1}
execute at @n[tag=ISLE5] run summon minecraft:turtle ~-22.5 ~0 ~7.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[190f,0f],Tags:["l9","mob3"]}
execute at @n[tag=ISLE5] run summon minecraft:drowned ~1.5 ~-11 ~4 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[180f,0f], Tags:["l9","mob4"]}
execute at @n[tag=ISLE5] run summon minecraft:squid ~5.72 ~-1.75 ~-17.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Rotation:[0f,0f], Tags:["l9","mob5"]}

# noteblock markers
execute at @n[tag=ISLE5] run summon marker ~-16 ~-8 ~2 {Tags:["l9", "nb0", "nb"]}
execute at @n[tag=ISLE5] run summon marker ~-16 ~-8 ~1 {Tags:["l9", "nb1", "nb"]}
execute at @n[tag=ISLE5] run summon marker ~-16 ~-8 ~0 {Tags:["l9", "nb2", "nb"]}
execute at @n[tag=ISLE5] run summon marker ~-16 ~-8 ~-1 {Tags:["l9", "nb3", "nb"]}
execute at @n[tag=ISLE5] run summon marker ~-16 ~-8 ~-2 {Tags:["l9", "nb4", "nb"]}
execute at @n[tag=ISLE5] run summon marker ~-16 ~-8 ~-3 {Tags:["l9", "nb5", "nb"]}

# solution markers
execute at @n[tag=ISLE5] run summon marker ~9 ~-10 ~-6 {Tags:["l9", "sol0", "sol"]}
execute at @n[tag=ISLE5] run summon marker ~16 ~-6 ~3 {Tags:["l9", "sol1", "sol"]}
execute at @n[tag=ISLE5] run summon marker ~-6 ~-6 ~17 {Tags:["l9", "sol2", "sol"]}
execute at @n[tag=ISLE5] run summon marker ~-23 ~0 ~5 {Tags:["l9", "sol3", "sol"]}
execute at @n[tag=ISLE5] run summon marker ~1 ~-11 ~2 {Tags:["l9", "sol4", "sol"]}
execute at @n[tag=ISLE5] run summon marker ~4 ~-4 ~-19 {Tags:["l9", "sol5", "sol"]}

# check ans marker
execute at @n[tag=ISLE5] run summon marker ~-15.5 ~-8 ~-4.5 {Tags:["l9", "ans"]}
execute at @n[tag=ISLE5] run summon marker ~-14 ~-10 ~-5 {Tags:["l9", "ans_switch"]}

# indicator marker
execute at @n[tag=ISLE5] run summon marker ~-15 ~-9 ~-3 {Tags:["l9", "indicator"]}

# noteblock array power
execute at @n[tag=ISLE5] run summon marker ~-18 ~-10 ~-3 {Tags:["l9", "nb_array"]}

## OTHER
tag @a remove limbo
function epc:origin
tag @e[tag=ORIGIN] remove active
data merge storage minecraft:hint {l9:[0,0,0,0,0,0]}
execute at @n[tag=l9,tag=ORIGIN] run function epc:give_wool {lvl:9}
execute at @e[tag=l9,tag=ans_switch] run function epc:ans/trigger {lvl:9}
execute at @e[tag=l9,tag=indicator] run clone ~ ~-1 ~ ~ ~-1 ~5 ~ ~ ~
execute at @e[tag=l9,tag=nb_array] run setblock ~ ~ ~ minecraft:redstone_block
execute at @e[tag=l9,tag=sol] run setblock ~ ~-1 ~ minecraft:bone_block
execute at @n[tag=ISLE5] run tp @e[type=armor_stand, tag=checkpoint] ~-3 ~2 ~-23 0 30
effect give @a minecraft:conduit_power infinite 255 true