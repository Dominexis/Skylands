# Progresses the target code
kill @e[type=spectral_arrow,x=-1775,y=226,z=-6376,distance=..250]
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.targets_shot 2
execute positioned -1865 235 -6463 run playsound block.note_block.bell block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 5 0.5
setblock -1865 235 -6463 redstone_lamp[lit=true]