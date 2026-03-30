advancement revoke @s only sanct:spell/sprint_damage/stop_sprinting

execute if entity @s[advancements={sanct:spell/sprint_damage/damage={level2=true,level3=false}}] run return run attribute @s minecraft:attack_knockback modifier add sanct:sprint_damage 0.3 add_multiplied_base
execute if entity @s[advancements={sanct:spell/sprint_damage/damage={level4=true}}] run return run attribute @s minecraft:attack_knockback modifier add sanct:sprint_damage 0.5 add_multiplied_base

attribute @s minecraft:attack_damage modifier add sanct:sprint_damage 1 add_value

execute if entity @s[advancements={sanct:spell/sprint_damage/damage={level2=false}}] run return run attribute @s minecraft:attack_knockback modifier add sanct:sprint_damage 0.15 add_multiplied_base
attribute @s minecraft:attack_knockback modifier add sanct:sprint_damage 0.4 add_multiplied_base