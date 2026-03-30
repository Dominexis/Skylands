function synb:utils/visuals/summon_effect_proc {item_icon:"minecraft:netherite_hoe"}
execute store result storage synb.d:tmp args.dmg int 1 run scoreboard players get @s synb.Status.Health
function synb:itemengine/player/damage_enemy with storage synb.d:tmp args
function synb:itemengine/player/damage_enemy {dmg:1}