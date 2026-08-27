# As : enemy
# Args :
#   - enemy_hurt_target (tag ctx)
##

# Trigger items
execute on attacker unless entity @s[tag=synb.status.used_melee] run return 1
scoreboard players set #enemy_hurt_dmg_type synb.Tmp.Ctx 1
execute on attacker run function synb:itemengine/executor/run {func:"enemy_hurt"}
scoreboard players set #enemy_hurt_dmg_type synb.Tmp.Ctx 0

# Maybe kill
execute if data entity @s {Health:0.0f} run function synb:itemengine/triggers/hit_detection/_enemy_executed_alt