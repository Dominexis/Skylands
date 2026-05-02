# Does the particles and sound effects when a player uses a telepad
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=celpel.needs_effects] at @s run playsound entity.player.teleport block @s ~ ~ ~ 0.8 1
execute at @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=celpel.needs_effects] run particle witch ~ ~1 ~ 0.75 0.75 0.75 1 35
tag @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] remove celpel.needs_effects