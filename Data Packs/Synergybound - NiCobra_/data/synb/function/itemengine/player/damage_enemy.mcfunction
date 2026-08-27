# /!\ Uncompiled
# As : enemy
# Args :
#   - dmg (macro)
#   - generic_player_src (tag ctx)
##

$scoreboard players set #dmg_v synb.Tmp.Expr $(dmg)
execute store result storage synb.d:tmp args.dmg long 1000.0 run scoreboard players get #dmg_v synb.Tmp.Expr
execute at @s run function synb:itemengine/player/damage_enemy_precise with storage synb.d:tmp args