advancement revoke @s only sanct:spell/weapon_sweeping_blood/attack

# Whisper
execute unless score #weapon_sweeping_whisper_delay sanct.numbers matches 1.. if predicate sanct:spell/weapon_sweeping/whisper_chance run function sanct:spell/alchemy/weapon_sweeping/blood/whisper/whisper

# Inflict attack
execute store result storage sanct:storage root.weapon_sweeping_blood.damage byte 1 run attribute @s minecraft:attack_damage get
execute at @e[type=#sanct:undead,tag=sanct.damage_target,distance=..8] run particle minecraft:sweep_attack ~ ~1 ~
function sanct:spell/alchemy/weapon_sweeping/blood/damage_apply with storage sanct:storage root.weapon_sweeping_blood