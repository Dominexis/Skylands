## SCOREBOARDS
scoreboard players set @a curr_level 2
scoreboard players set @a attempts 0

## SUMMON ENTITIES
# mobs
execute at @n[tag=ISLE1] run summon minecraft:chicken ~0 ~0 ~-15 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Tags:["l2","mob0"]}
execute at @n[tag=ISLE1] run summon minecraft:sheep ~-7 ~1 ~-24 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Tags:["l2","mob1"]}
execute at @n[tag=ISLE1] run summon minecraft:pig ~-7 ~0 ~-15 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Tags:["l2","mob2"]}
execute at @n[tag=ISLE1] run summon minecraft:bee ~-0.5 ~1 ~-2.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,Rotation:[45.0f,0f],Tags:["l2","mob3"]}
execute at @n[tag=ISLE1] run summon minecraft:cow ~0 ~1 ~-24 {Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Tags:["l2","mob4"]}

# noteblock markers
execute at @n[tag=ISLE1] run summon marker ~-7 ~0 ~-4 {Tags:["l2", "nb0", "nb"]}
execute at @n[tag=ISLE1] run summon marker ~-7 ~0 ~-5 {Tags:["l2", "nb1", "nb"]}
execute at @n[tag=ISLE1] run summon marker ~-7 ~0 ~-6 {Tags:["l2", "nb2", "nb"]}
execute at @n[tag=ISLE1] run summon marker ~-7 ~0 ~-7 {Tags:["l2", "nb3", "nb"]}
execute at @n[tag=ISLE1] run summon marker ~-7 ~0 ~-8 {Tags:["l2", "nb4", "nb"]}

# solution markers
execute at @n[tag=ISLE1] run summon marker ~0 ~0 ~-13 {Tags:["l2", "sol0", "sol"]}
execute at @n[tag=ISLE1] run summon marker ~-7 ~1 ~-20 {Tags:["l2", "sol1", "sol"]}
execute at @n[tag=ISLE1] run summon marker ~-7 ~0 ~-13 {Tags:["l2", "sol2", "sol"]}
execute at @n[tag=ISLE1] run summon marker ~-1 ~0 ~-4 {Tags:["l2", "sol3", "sol"]}
execute at @n[tag=ISLE1] run summon marker ~0 ~1 ~-20 {Tags:["l2", "sol4", "sol"]}

# check ans marker
execute at @n[tag=ISLE1] run summon marker ~-7 ~0 ~-2 {Tags:["l2", "ans"]}
execute at @n[tag=ISLE1] run summon marker ~-5 ~-2 ~-2 {Tags:["l2", "ans_switch"]}

# indicator marker
execute at @n[tag=ISLE1] run summon marker ~-6 ~-1 ~-8 {Tags:["l2", "indicator"]}

# noteblock array power
execute at @n[tag=ISLE1] run summon marker ~-9 ~-2 ~-8 {Tags:["l2", "nb_array"]}

## OTHER
tag @a remove limbo
function epc:origin
tag @e[tag=ORIGIN] remove active
data merge storage minecraft:hint {l2:[0,0,0,0,0,1]}
execute at @n[tag=l2,tag=ORIGIN] run function epc:give_wool {lvl:2}
execute at @e[tag=l2,tag=ans_switch] run function epc:ans/trigger {lvl:2}
execute at @e[tag=l2,tag=indicator] run clone ~ ~-1 ~ ~ ~-1 ~4 ~ ~ ~
execute at @e[tag=l2,tag=nb_array] run setblock ~ ~ ~ minecraft:redstone_block
execute at @e[tag=l2,tag=sol] run setblock ~ ~-1 ~ minecraft:bone_block