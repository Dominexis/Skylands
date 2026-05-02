# Plays the telepad boots request voice line REALLY quietly to have it loaded into the game's local memory, preventing a delay from loading it in

execute at @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] run playsound minecraft:celpel.2 master @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 0.0001 2 0.0001