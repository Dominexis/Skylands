# As : player
# Args :
#   - enemy_attacker_src (tag ctx)
##

scoreboard players set #player_hurt_dmg_type synb.Tmp.Ctx 1
function synb:itemengine/executor/run {func:"player_hurt"}
scoreboard players set #player_hurt_dmg_type synb.Tmp.Ctx 0