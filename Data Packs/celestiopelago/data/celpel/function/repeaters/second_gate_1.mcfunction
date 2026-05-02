# Prepares to open the second gate
item replace block -1820 198 -6271 container.13 with air
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s run playsound block.note_block.bell block @s ~ ~ ~ 100 1
schedule function celpel:repeaters/second_gate_2 1s