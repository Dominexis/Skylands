# Plays a sound effect when a copper bulb toggles
execute positioned -1838 200 -6271 run playsound block.note_block.bit block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player]
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.bulb_3 1