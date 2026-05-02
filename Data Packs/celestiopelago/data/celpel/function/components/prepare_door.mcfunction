# Prepares to open the massive door
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.door_opened 1
kill @e[type=spectral_arrow,x=-1775,y=226,z=-6376,distance=..250]
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s run playsound minecraft:block.note_block.bell block @s ~ ~2 ~ 1 0.65
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s run playsound minecraft:block.note_block.banjo block @s ~ ~2 ~ 0.1 0.65
schedule function celpel:components/door_1 30t

function celpel:strings/load_ending