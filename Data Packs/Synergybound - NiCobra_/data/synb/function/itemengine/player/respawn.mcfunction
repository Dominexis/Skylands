# As : player
##

attribute @s minecraft:max_health modifier remove synb.m:ie.set_10

tag @s remove synb.type.dead_player
tag @s add synb.type.player
tag @s add synb.attr.player_in_arena
function synb:itemengine/mod/spawn

function synb:itemengine/executor/run {func:"on_respawn"}