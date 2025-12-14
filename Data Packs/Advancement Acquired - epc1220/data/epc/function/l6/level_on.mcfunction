## SCOREBOARDS
scoreboard players set @a curr_level 6
scoreboard players set @a attempts 0

## SUMMON ENTITIES
# mobs
execute at @n[tag=ISLE4] run summon minecraft:slime ~1.75 ~0 ~-24.75 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[80f,0f],Tags:["l6","mob0"],Size:3}
execute at @n[tag=ISLE4] run summon minecraft:parrot ~3 ~16.025 ~13 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[65f,-5f],Tags:["l6","mob1"],Variant:0, Sitting:1b}
execute at @n[tag=ISLE4] run summon minecraft:ocelot ~-33 ~1 ~5.9 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[-115f,10f],Tags:["l6","mob2"]}
execute at @n[tag=ISLE4] run summon minecraft:witch ~17 ~2 ~-5.5 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[180f,0f],Tags:["l6","mob3"]}
execute at @n[tag=ISLE4] run summon minecraft:bogged ~-14.6 ~0 ~-11.23 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[195f,0f], Tags:["l6","mob4"]}
execute at @n[tag=ISLE4] run summon minecraft:panda ~2.4 ~0 ~27.0 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,OnGround:1b,Rotation:[-140f,-10f], Tags:["l6","mob5"]}

# noteblock markers
execute at @n[tag=ISLE4] run summon marker ~12 ~0 ~-17 {Tags:["l6", "nb0", "nb"]}
execute at @n[tag=ISLE4] run summon marker ~12 ~0 ~-18 {Tags:["l6", "nb1", "nb"]}
execute at @n[tag=ISLE4] run summon marker ~12 ~0 ~-19 {Tags:["l6", "nb2", "nb"]}
execute at @n[tag=ISLE4] run summon marker ~12 ~0 ~-20 {Tags:["l6", "nb3", "nb"]}
execute at @n[tag=ISLE4] run summon marker ~12 ~0 ~-21 {Tags:["l6", "nb4", "nb"]}
execute at @n[tag=ISLE4] run summon marker ~12 ~0 ~-22 {Tags:["l6", "nb5", "nb"]}

# solution markers
execute at @n[tag=ISLE4] run summon marker ~-1 ~0 ~-24 {Tags:["l6", "sol0", "sol"]}
execute at @n[tag=ISLE4] run summon marker ~1 ~15 ~14 {Tags:["l6", "sol1", "sol"]}
execute at @n[tag=ISLE4] run summon marker ~-31 ~0 ~5 {Tags:["l6", "sol2", "sol"]}
execute at @n[tag=ISLE4] run summon marker ~17 ~2 ~-7 {Tags:["l6", "sol3", "sol"]}
execute at @n[tag=ISLE4] run summon marker ~-14 ~0 ~-13 {Tags:["l6", "sol4", "sol"]}
execute at @n[tag=ISLE4] run summon marker ~5 ~0 ~24 {Tags:["l6", "sol5", "sol"]}

# check ans marker
execute at @n[tag=ISLE4] run summon marker ~12 ~0 ~-15 {Tags:["l6", "ans"]}
execute at @n[tag=ISLE4] run summon marker ~14 ~-2 ~-15 {Tags:["l6", "ans_switch"]}

# indicator marker
execute at @n[tag=ISLE4] run summon marker ~13 ~-1 ~-22 {Tags:["l6", "indicator"]}

# noteblock array power
execute at @n[tag=ISLE4] run summon marker ~10 ~-2 ~-22 {Tags:["l6", "nb_array"]}

## OTHER
tag @a remove limbo
function epc:origin
tag @e[tag=ORIGIN] remove active
data merge storage minecraft:hint {l6:[0,0,0,0,0,0]}
execute at @n[tag=l6,tag=ORIGIN] run function epc:give_wool {lvl:6}
execute at @e[tag=l6,tag=ans_switch] run function epc:ans/trigger {lvl:6}
execute at @e[tag=l6,tag=indicator] run clone ~ ~-1 ~ ~ ~-1 ~5 ~ ~ ~
execute at @e[tag=l6,tag=nb_array] run setblock ~ ~ ~ minecraft:redstone_block
execute at @e[tag=l6,tag=sol] run setblock ~ ~-1 ~ minecraft:bone_block
item replace entity @a armor.feet with minecraft:diamond_boots[minecraft:enchantments={depth_strider:3,binding_curse:1},minecraft:unbreakable={}]
execute at @e[tag=B5] run setblock ~ ~1 ~ minecraft:black_concrete