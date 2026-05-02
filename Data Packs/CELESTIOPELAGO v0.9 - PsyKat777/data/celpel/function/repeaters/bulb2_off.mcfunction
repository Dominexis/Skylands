# Plays a sound effect when a copper bulb toggles
execute positioned -1831 200 -6264 run playsound block.note_block.bit block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1 0.8
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.bulb_2 0