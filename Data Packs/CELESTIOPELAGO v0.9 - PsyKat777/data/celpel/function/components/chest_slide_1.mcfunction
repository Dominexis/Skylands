# Slides the chest from under the roof pillar
setblock -1791 243 -6395 oxidized_copper_chest{lock:{components:{"minecraft:custom_name":"UNOBTAINABLE"}}}
setblock -1792 243 -6395 cut_copper_stairs[facing=south]
setblock -1793 243 -6395 cut_copper
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] positioned -1790 243 -6395 run playsound block.piston.extend block @s ~ ~ ~
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] positioned -1794 243 -6395 run playsound block.piston.contract block @s ~ ~ ~
schedule function celpel:components/chest_slide_2 10t