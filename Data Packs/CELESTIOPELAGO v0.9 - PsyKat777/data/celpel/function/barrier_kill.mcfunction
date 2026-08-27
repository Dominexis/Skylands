# Kills the player if they hit the barriers
kill @s
tellraw @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] [{"selector":"@s"}," fell into the pressurizing forcefield surrounding the CELESTIOPELAGO and died"]
tp @s -1855 221 -6400
execute positioned -1855 221 -6400 run playsound entity.player.death master @s ~ ~ ~ 1 1 1