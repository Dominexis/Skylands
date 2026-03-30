# As : player
##

advancement revoke @s only synb:player_hurt_no_knockback
execute unless entity @s[team=sl.player,tag=synb.type.player] run return 0

tag @s add synb.status.hurt_no_enemy