# As/At : player
##

execute as @s[tag=synb.attr.core.need_tick] at @s run function synb:itemengine/player_tick
tag @s remove synb.attr.core.need_tick