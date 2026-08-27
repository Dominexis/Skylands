function synb:utils/visuals/summon_effect_proc {item_icon:"minecraft:ghast_tear"}
playsound minecraft:entity.allay.item_taken neutral @a ~ ~ ~ 1 0.5
function synb:itemengine/player/damage_enemy_magic {dmg:4}
tag @s add synb.item.shield_heal.triggered