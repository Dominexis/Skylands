# Prepares to open the first gate
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s run playsound block.note_block.bell block @s ~ ~ ~ 100 0.5
schedule function celpel:repeaters/first_gate_3 1s