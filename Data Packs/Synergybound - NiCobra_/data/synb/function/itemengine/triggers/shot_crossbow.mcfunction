# As : player
##

advancement revoke @s only synb:shot_crossbow
execute unless entity @s[team=sl.player,tag=synb.type.player] run return 0

function synb:itemengine/player/shot