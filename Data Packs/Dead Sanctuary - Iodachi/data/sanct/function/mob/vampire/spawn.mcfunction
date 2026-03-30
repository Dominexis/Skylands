
# Summon vampire
function sanct:mob/vampire/summon with storage sanct:storage root.summon.vampire.stat

# Summon bats
execute store result score #summon_bat_iterator sanct.numbers run data get storage sanct:storage root.summon.vampire.bat_count
function sanct:mob/vampire/blood/summon_bat

execute as @e[type=minecraft:silverfish,limit=1,distance=0] at @s run function sanct:mob/vampire/spawn_data
