# Displays particles when certains scoreboards are set to certain values
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.requesting_particles matches 1 run particle minecraft:portal -1848 225.8 -6408 0.1 0.1 0.1 1.5 2
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.vaporizing_particles matches 1 run particle minecraft:cloud -1788 247.1 -6405 0.1 0.01 0.1 0 1
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.blackhole_particles matches 0 run particle minecraft:portal -1790 220 -6401 0.25 0.25 0.25 1.5 5
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.blackhole_particles matches 2 run particle minecraft:portal -1794 220 -6401 0.25 0.25 0.25 1.5 5
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.fan_active matches 1 run particle minecraft:dust_pillar{block_state:{Name:white_wool}} -1777 220 -6400 1 1 1 1 2
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.fan_active matches 1 run particle minecraft:small_gust -1777 225 -6400 1.25 5 1.25 1 5
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.fan_active matches 1 run particle minecraft:firefly -1777 225 -6400 1.25 5 1.25 1 2
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.fan_active matches 1 run particle minecraft:soul_fire_flame -1784 224.5 -6400 0.55 0.55 0.55 0.01 1