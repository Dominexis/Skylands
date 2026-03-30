# As : player
# Args :
#   - enemy_attacker_src (tag ctx)
##

effect clear @s minecraft:levitation
effect clear @s minecraft:unluck
scoreboard players set #player_hurt_dmg_type synb.Tmp.Ctx 2
function synb:itemengine/executor/run {func:"player_hurt"}
scoreboard players set #player_hurt_dmg_type synb.Tmp.Ctx 0