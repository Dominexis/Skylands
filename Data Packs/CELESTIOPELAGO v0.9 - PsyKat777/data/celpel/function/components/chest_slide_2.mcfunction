# Slides the chest from under the roof pillar
fill -1791 243 -6395 -1793 243 -6395 cut_copper_stairs[facing=south]
clone -1792 237 -6398 -1792 237 -6398 -1792 243 -6395
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] positioned -1790 243 -6395 run playsound block.piston.extend block @s ~ ~ ~
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] positioned -1794 243 -6395 run playsound block.piston.contract block @s ~ ~ ~