# As : player
##

function synb:itemengine/executor/run {func:"on_remove"}

function synb:itemengine/mod/quit

scoreboard players reset @s synb.IETotalItems

tag @s remove synb.attr.player_in_arena
tag @s remove synb.attr.challenge1_completed
tag @s remove synb.attr.challenge2_completed
tag @s remove synb.attr.arena1_played
tag @s remove synb.attr.arena2_played
tag @s remove synb.attr.arena3_played
tag @s remove synb.type.dead_player
tag @s remove synb.type.player
tag @s remove synb.attr.core.need_tick
effect clear @s
clear @s
stopsound @s record

# [SKYLANDS: SPAWNPOINT]
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.hub] run function sl:api/set_checkpoint

# If dead player
attribute @s minecraft:max_health modifier remove synb.m:ie.set_10

# Player sys
scoreboard players reset @s synb.PSys.FountainCount
scoreboard players reset @s synb.PSys.FountainTotal

# Triggers
scoreboard players reset @s synb.Trigger.DmgTaken
scoreboard players reset @s synb.Trigger.DmgTakenAbs

effect give @s minecraft:instant_health 1 50 true