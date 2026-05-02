# Tells the player that a gate has opened
tellraw @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] [{"text": "[CELESTIOPELAGO] ", "color": "#3D7DCC"}, {"text": "THE GATE AT THE SIGN WALL IS NOW OPEN.", "color": "#74A8E8"}]
execute at @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] run playsound celpel.ol_1 master @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 100