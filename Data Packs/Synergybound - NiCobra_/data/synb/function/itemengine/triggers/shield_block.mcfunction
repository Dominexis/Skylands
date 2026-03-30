# As/At : player
##

advancement revoke @s only synb:shield_block
execute unless entity @s[team=sl.player,tag=synb.type.player] run return 0

function synb:itemengine/player/blocked_attack