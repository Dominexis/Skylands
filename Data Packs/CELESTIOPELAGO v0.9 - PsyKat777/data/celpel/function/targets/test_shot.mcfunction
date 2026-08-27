# Tests if a particular target is shot (and sometimes other conditions as well)
execute unless block -1795 249 -6404 target[power=0] if block -1792 247 -6405 chiseled_copper run function celpel:targets/ladder_1

execute unless block -1880 249 -6491 target[power=0] if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.targets_shot matches 0 run function celpel:targets/code_1
execute unless block -1860 236 -6463 target[power=0] if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.targets_shot matches 1 run function celpel:targets/code_2
execute unless block -1832 244 -6481 target[power=0] if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.targets_shot matches 2 run function celpel:targets/code_3
execute unless block -1857 259 -6448 target[power=0] if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.targets_shot matches 3 run function celpel:targets/code_4

execute unless block -1860 236 -6463 target[power=0] if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.targets_shot matches 0 run function celpel:targets/code_reset
execute unless block -1832 244 -6481 target[power=0] if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.targets_shot matches 0..1 run function celpel:targets/code_reset
execute unless block -1857 259 -6448 target[power=0] if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.targets_shot matches 0..2 run function celpel:targets/code_reset