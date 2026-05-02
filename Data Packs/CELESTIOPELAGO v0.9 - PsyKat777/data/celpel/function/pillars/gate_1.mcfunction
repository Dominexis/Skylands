# Prepares to notify the player that the pillars have been solved
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillars_completed 1
schedule function celpel:pillars/gate_2 2s