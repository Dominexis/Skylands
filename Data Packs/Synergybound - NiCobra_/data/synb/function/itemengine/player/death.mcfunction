# As : player
##

# Note : Execution position seems random

playsound minecraft:entity.ender_dragon.hurt player @s ~ ~ ~ 1 0.5 1
tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[Synb] ","color":"gray"},{selector:"@s","color":"yellow"},{"text":" died !","color":"white"}]

function synb:itemengine/executor/run {func:"on_death"}

tag @s add synb.type.dead_player

tag @s remove synb.attr.player_in_arena
tag @s remove synb.type.player
tag @s remove synb.attr.core.need_tick
effect clear @s
clear @s
stopsound @s record

# Elems
scoreboard players reset @s synb.IEPlayer.ShieldCD

# Triggers
scoreboard players reset @s synb.Trigger.DmgTaken
scoreboard players reset @s synb.Trigger.DmgTakenAbs

# Reduced max health
attribute @s minecraft:max_health modifier add synb.m:ie.set_10 -10 add_value
effect give @s minecraft:instant_health 1 50 true

# Immediate arena reset check
scoreboard players set @e[type=minecraft:marker,tag=synb.mark.arena,distance=..40,sort=nearest,limit=1] synb.ASys.ResetDelay 0