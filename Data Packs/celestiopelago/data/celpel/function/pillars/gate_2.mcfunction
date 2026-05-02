# Notifies the player that the pillars have been solved
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s run playsound block.note_block.bell block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~
schedule function celpel:pillars/gate_3 1s