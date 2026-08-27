# Tells the player that a gate has opened
tellraw @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] [{"text": "[CELESTIOPELAGO] ", "color": "#3D7DCC"}, {"text": "THE GATE BENEATH THE TELEPAD IS NOW OPEN.", "color": "#74A8E8"}]
execute at @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] run playsound celpel.ol_4 master @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 100