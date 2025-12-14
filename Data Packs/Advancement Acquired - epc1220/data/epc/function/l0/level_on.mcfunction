## SUMMON ENTITIES
# mobs
execute at @n[tag=SPAWN] run summon minecraft:enderman ~-15.0 ~1.0 ~-7.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Tags:["l0","mob0"]}
execute at @n[tag=SPAWN] run summon minecraft:donkey ~-13.0 ~1.0 ~-8.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Tags:["l0","mob1"]}
execute at @n[tag=SPAWN] run summon minecraft:shulker ~-11.0 ~1.0 ~-9.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Tags:["l0","mob2"],Peek:50b}
execute at @n[tag=SPAWN] run summon minecraft:creeper ~-9.0 ~1.0 ~-10.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Tags:["l0","mob3"]}

# noteblock markers
execute at @n[tag=SPAWN] run summon marker ~-16 ~0 ~2 {Tags:["l0", "nb0", "nb"]}
execute at @n[tag=SPAWN] run summon marker ~-16 ~0 ~1 {Tags:["l0", "nb1", "nb"]}
execute at @n[tag=SPAWN] run summon marker ~-16 ~0 ~0 {Tags:["l0", "nb2", "nb"]}
execute at @n[tag=SPAWN] run summon marker ~-16 ~0 ~-1 {Tags:["l0", "nb3", "nb"]}

# solution markers
execute at @n[tag=SPAWN] run summon marker ~-15 ~1 ~-6 {Tags:["l0", "sol0", "sol"]}
execute at @n[tag=SPAWN] run summon marker ~-13 ~1 ~-7 {Tags:["l0", "sol1", "sol"]}
execute at @n[tag=SPAWN] run summon marker ~-11 ~1 ~-8 {Tags:["l0", "sol2", "sol"]}
execute at @n[tag=SPAWN] run summon marker ~-9 ~1 ~-9 {Tags:["l0", "sol3", "sol"]}

# check ans marker
execute at @n[tag=SPAWN] run summon marker ~-16 ~0 ~-3 {Tags:["l0", "ans"]}
execute at @n[tag=SPAWN] run summon marker ~-14 ~-2 ~-3 {Tags:["l0", "ans_switch"]}

# indicator marker
execute at @n[tag=SPAWN] run summon marker ~-15 ~-2 ~-1 {Tags:["l0", "indicator"]}

# noteblock array power
execute at @n[tag=SPAWN] run summon marker ~-17 ~-2 ~-2 {Tags:["l0", "nb_array"]}

## OTHER
execute at @n[tag=l0,tag=ans_switch] run function epc:give_wool {lvl:0}
execute at @e[tag=l0,tag=ans_switch] run function epc:ans/trigger {lvl:0}
execute at @e[tag=l0,tag=indicator] run clone ~ ~-1 ~ ~ ~-1 ~3 ~ ~ ~
execute at @e[tag=l0,tag=nb_array] run setblock ~ ~ ~ minecraft:redstone_block
execute at @e[tag=l0,tag=sol] run setblock ~ ~-1 ~ minecraft:bone_block