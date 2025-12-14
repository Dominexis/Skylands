## TURN OFF LEVELS
function epc:level_off {lvl:0, inum:0, fill:"grass_block"}

## RESET TRAVEL PADS
execute at @e[tag=I0] run setblock ~ ~1 ~ air
execute at @e[tag=B0] run setblock ~ ~ ~ air
