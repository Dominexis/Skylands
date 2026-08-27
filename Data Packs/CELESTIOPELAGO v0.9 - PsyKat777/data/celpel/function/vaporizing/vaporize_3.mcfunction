execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] positioned -1788 243 -6405 run playsound block.piston.extend block @s ~ ~ ~
setblock -1788 246 -6405 waxed_oxidized_chiseled_copper
clone -1792 237 -6402 -1792 237 -6402 -1788 245 -6405
schedule function celpel:vaporizing/vaporize_4 1s