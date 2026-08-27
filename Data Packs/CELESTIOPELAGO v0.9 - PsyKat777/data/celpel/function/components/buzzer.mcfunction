# Sounds the buzzer when the player shoots the door target but hasn't filled in all of the wires
kill @e[type=spectral_arrow,x=-1775,y=226,z=-6376,distance=..250]
setblock -1792 233 -6407 target[power=0]
stopsound @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] * block.note_block.didgeridoo
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s run playsound block.note_block.didgeridoo block @s ~ ~2 ~ 5 1