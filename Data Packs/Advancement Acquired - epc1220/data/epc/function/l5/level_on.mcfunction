## SCOREBOARDS
scoreboard players set @a curr_level 5
scoreboard players set @a attempts 0

## SUMMON ENTITIES
# mobs
execute at @n[tag=ISLE3] run summon minecraft:camel ~3.5 ~0 ~9.7 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[210f,0f],Tags:["l5","mob0"], LastPoseTick:-1L}
execute at @n[tag=ISLE3] run summon minecraft:wolf ~-14.5 ~0 ~2.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[-135f,0f],Tags:["l5","mob1"],variant:"minecraft:striped", Sitting:1b, equipment:{body:{count:1, id:"minecraft:wolf_armor"}}}
execute at @n[tag=ISLE3] run summon minecraft:llama ~14.0 ~0 ~-8.7 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[-30f,0f],Tags:["l5","mob2"],equipment:{body:{count:1, id:"minecraft:green_carpet"}},Variant:3,CustomName:"Captain Spitz"}
execute at @n[tag=ISLE3] run summon minecraft:rabbit ~-7 ~0 ~21 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[0f,0f],Tags:["l5","mob3"], RabbitType:5}
execute at @n[tag=ISLE3] run summon minecraft:husk ~-6 ~0 ~16 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[180f,0f], Tags:["l5","mob4"]}
execute at @n[tag=ISLE3] run summon minecraft:armadillo ~6.6 ~0 ~-8.7 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[45f,0f], Tags:["l5","mob5"]}

# noteblock markers
execute at @n[tag=ISLE3] run summon marker ~-3 ~0 ~-15 {Tags:["l5", "nb0", "nb"]}
execute at @n[tag=ISLE3] run summon marker ~-3 ~0 ~-14 {Tags:["l5", "nb1", "nb"]}
execute at @n[tag=ISLE3] run summon marker ~-3 ~0 ~-13 {Tags:["l5", "nb2", "nb"]}
execute at @n[tag=ISLE3] run summon marker ~-3 ~0 ~-12 {Tags:["l5", "nb3", "nb"]}
execute at @n[tag=ISLE3] run summon marker ~-3 ~0 ~-11 {Tags:["l5", "nb4", "nb"]}
execute at @n[tag=ISLE3] run summon marker ~-3 ~0 ~-10 {Tags:["l5", "nb5", "nb"]}

# solution markers
execute at @n[tag=ISLE3] run summon marker ~6 ~0 ~7 {Tags:["l5", "sol0", "sol"]}
execute at @n[tag=ISLE3] run summon marker ~-13 ~0 ~0 {Tags:["l5", "sol1", "sol"]}
execute at @n[tag=ISLE3] run summon marker ~15 ~0 ~-7 {Tags:["l5", "sol2", "sol"]}
execute at @n[tag=ISLE3] run summon marker ~-7 ~-1 ~22 {Tags:["l5", "sol3", "sol"]}
execute at @n[tag=ISLE3] run summon marker ~-6 ~0 ~14 {Tags:["l5", "sol4", "sol"]}
execute at @n[tag=ISLE3] run summon marker ~5 ~0 ~-7 {Tags:["l5", "sol5", "sol"]}

# check ans marker
execute at @n[tag=ISLE3] run summon marker ~-3 ~0 ~-8 {Tags:["l5", "ans"]}
execute at @n[tag=ISLE3] run summon marker ~-5 ~-2 ~-8 {Tags:["l5", "ans_switch"]}

# indicator marker
execute at @n[tag=ISLE3] run summon marker ~-4 ~-1 ~-15 {Tags:["l5", "indicator"]}

# noteblock array power
execute at @n[tag=ISLE3] run summon marker ~-1 ~-2 ~-10 {Tags:["l5", "nb_array"]}

## OTHER
tag @a remove limbo
function epc:origin
tag @e[tag=ORIGIN] remove active
data merge storage minecraft:hint {l5:[0,0,0,0,0,0]}
execute at @n[tag=l5,tag=ORIGIN] run function epc:give_wool {lvl:5}
execute at @e[tag=l5,tag=ans_switch] run function epc:ans/trigger {lvl:5}
execute at @e[tag=l5,tag=indicator] run clone ~ ~-1 ~ ~ ~-1 ~5 ~ ~ ~
execute at @e[tag=l5,tag=nb_array] run setblock ~ ~ ~ minecraft:redstone_block
execute at @e[tag=l5,tag=sol] run setblock ~ ~-1 ~ minecraft:bone_block
execute at @e[tag=B4] run setblock ~ ~ ~ minecraft:air