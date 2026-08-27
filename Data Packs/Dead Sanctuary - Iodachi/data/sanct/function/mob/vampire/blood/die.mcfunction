
# Return if still alive
execute on vehicle unless entity @s[nbt={Health:0.0f}] run return 1

# Feedback effects
particle minecraft:dust{color:-9109504,scale:2} ~ ~.5 ~ .4 .6 .4 0.1 100
playsound minecraft:entity.vindicator.hurt master @a[distance=..16] ~ ~ ~ 1 0.8
playsound minecraft:item.firecharge.use hostile @a[distance=..16]

# Summon vampire
function sanct:mob/vampire/form/summon with storage sanct:storage root.summon.vampire.stat

# Teleport living bats
execute as @e[x=-2384,y=-16,z=2224,dx=158,dy=158,dz=158,type=minecraft:bat] if score @s sanct.id = @e[type=minecraft:item_display,distance=..0.0000001,limit=1] sanct.id run function sanct:mob/vampire/form/teleport_bats_apply

# Resummon one bat if all were killed
execute unless entity @e[type=minecraft:bat,distance=0,limit=1] run summon minecraft:bat ~ ~ ~ {attributes:[{id:"minecraft:scale",base:1.5f}],Health:0.001f,PersistenceRequired:1b,Tags:["sanct.vampire","sanct.damage_target"],Team:"sanct.vampire",active_effects:[{id:"minecraft:resistance",amplifier:255,duration:20},{id:"minecraft:glowing",duration:20}],DeathLootTable:"sanct:drop/vampire/bat_check"}

# Set id of vampire and bats to be the same
scoreboard players operation @e[type=#sanct:vampire/form,distance=0] sanct.id = @s sanct.id

execute on passengers run kill @s
kill @s