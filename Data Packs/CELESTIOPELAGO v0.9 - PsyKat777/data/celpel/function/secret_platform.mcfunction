# Loads in the platform that's needed to access the secret emerald
fill -1781 196 -6401 -1784 196 -6398 minecraft:light_blue_stained_glass
particle block{block_state:{Name:blue_stained_glass}} -1782.5 196 -6399.5 2.25 1.25 2.25 1 200
execute positioned -1782.5 196 -6399.5 run playsound minecraft:block.note_block.iron_xylophone block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 3 1.3
kill @e[type=spectral_arrow,x=-1775,y=226,z=-6376,distance=..250]