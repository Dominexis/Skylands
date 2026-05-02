# Resets the target code after an incorrect input
kill @e[type=spectral_arrow,x=-1775,y=226,z=-6376,distance=..250]
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.targets_shot 0
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s run playsound block.note_block.iron_xylophone block @s ~ ~ ~ 100 0.5
setblock -1880 262 -6491 redstone_lamp[lit=false]
setblock -1865 235 -6463 redstone_lamp[lit=false]
setblock -1832 241 -6481 redstone_lamp[lit=false]
setblock -1861 253 -6448 redstone_lamp[lit=false]

# Prevents repitition of the function
setblock -1860 236 -6463 target[power=0]
setblock -1832 244 -6481 target[power=0]
setblock -1857 259 -6448 target[power=0]