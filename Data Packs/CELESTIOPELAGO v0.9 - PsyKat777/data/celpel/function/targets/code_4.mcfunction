# Completes the target code
kill @e[type=spectral_arrow,x=-1775,y=226,z=-6376,distance=..250]
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.targets_shot 4
execute positioned -1861 253 -6448 run playsound block.note_block.bell block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 5 1
setblock -1861 253 -6448 redstone_lamp[lit=true]
schedule function celpel:targets/allow_access 1s