# Gives the player effects
effect give @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] saturation 15 0 true
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.recovering_effects matches 1.. run effect give @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] blindness 2 0 true
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.recovering_effects matches 1.. run effect give @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] slowness 2 4 true
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.recovering_effects matches 2 run effect give @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] darkness 2 0 true
execute as @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s if score @s celpel.fan_active matches 1 if block ~ ~-1 ~ copper_grate run effect give @s levitation 1 16 true
execute as @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s if score @s celpel.fan_active matches 1 if block ~ ~-2 ~ copper_grate run effect give @s levitation 1 16 true
execute as @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s if score @s celpel.fan_active matches 1 if block ~ ~-3 ~ copper_grate run effect give @s slow_falling 1 0 true