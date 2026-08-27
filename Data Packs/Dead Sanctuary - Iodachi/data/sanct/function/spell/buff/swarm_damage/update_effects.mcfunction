
attribute @s minecraft:attack_damage modifier remove sanct:swarm_damage
advancement revoke @s only sanct:spell/swarm_damage/active_buff

# No buff
execute if score #enemy_quantity sanct.numbers matches ..3 run playsound minecraft:block.fire.extinguish player @s
execute if score #enemy_quantity sanct.numbers matches ..3 run return run particle minecraft:smoke ~ ~1 ~ 1 0.5 1 0 50 normal @s

playsound minecraft:block.fire.ambient player @s

# High buff
execute if score #enemy_quantity sanct.numbers matches 12.. if entity @s[advancements={sanct:spell/swarm_damage/level={level3=true}}] run advancement grant @s only sanct:spell/swarm_damage/active_buff has_buff_high
attribute @s[advancements={sanct:spell/swarm_damage/active_buff=true,sanct:spell/swarm_damage/level={level4=true}}] minecraft:attack_damage modifier add sanct:swarm_damage 5 add_value
attribute @s[advancements={sanct:spell/swarm_damage/active_buff=true,sanct:spell/swarm_damage/level={level3=true,level4=false}}] minecraft:attack_damage modifier add sanct:swarm_damage 4 add_value
execute if entity @s[advancements={sanct:spell/swarm_damage/active_buff=true}] run particle minecraft:trial_spawner_detection ~ ~0.5 ~ 1 0.3 1 0 25 normal @s
execute if entity @s[advancements={sanct:spell/swarm_damage/active_buff=true}] run return run particle minecraft:trial_spawner_detection_ominous ~ ~0.5 ~ 1 0.3 1 0 25 normal @s

# Medium buff
execute if score #enemy_quantity sanct.numbers matches 8.. if entity @s[advancements={sanct:spell/swarm_damage/level={level2=true}}] run advancement grant @s only sanct:spell/swarm_damage/active_buff has_buff_medium
attribute @s[advancements={sanct:spell/swarm_damage/active_buff=true,sanct:spell/swarm_damage/level={level4=true}}] minecraft:attack_damage modifier add sanct:swarm_damage 3 add_value
attribute @s[advancements={sanct:spell/swarm_damage/active_buff=true,sanct:spell/swarm_damage/level={level2=true,level4=false}}] minecraft:attack_damage modifier add sanct:swarm_damage 2 add_value
execute if entity @s[advancements={sanct:spell/swarm_damage/active_buff=true}] run return run particle minecraft:trial_spawner_detection_ominous ~ ~0.5 ~ 1 0.3 1 0 50 normal @s

# Low buff
advancement grant @s only sanct:spell/swarm_damage/active_buff has_buff_low
attribute @s[advancements={sanct:spell/swarm_damage/level={level4=true}}] minecraft:attack_damage modifier add sanct:swarm_damage 2 add_value
attribute @s[advancements={sanct:spell/swarm_damage/level={level4=false}}] minecraft:attack_damage modifier add sanct:swarm_damage 1 add_value
particle minecraft:trial_spawner_detection ~ ~0.5 ~ 1 0.3 1 0 50 normal @s