summon minecraft:bat ~ ~ ~ {attributes:[{id:"minecraft:scale",base:1.5f}],Health:0.001f,PersistenceRequired:1b,Tags:["sanct.vampire","sanct.damage_target"],Team:"sanct.vampire",active_effects:[{id:"minecraft:resistance",amplifier:255,duration:20,show_particles:0b}],DeathLootTable:"sanct:drop/vampire/bat_check"}

execute if score #summon_bat_iterator sanct.numbers matches ..1 run return 1
scoreboard players remove #summon_bat_iterator sanct.numbers 1
function sanct:mob/vampire/blood/summon_bat