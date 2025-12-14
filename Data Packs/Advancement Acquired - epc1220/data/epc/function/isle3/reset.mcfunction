## TURN OFF LEVELS
function epc:level_off {lvl:5, inum:3, fill:"sand"}

## RESET TRAVEL PADS
execute at @e[tag=I3,tag=LEAVE] run setblock ~ ~ ~ minecraft:sand
execute at @e[tag=I3] run setblock ~ ~1 ~ air

## RESET SUSPICIOUS BLOCKS
execute at @n[tag=ISLE3] run setblock ~3 ~0 ~-8 minecraft:suspicious_sand{item:{id:"minecraft:paper",count:1}}
execute at @n[tag=ISLE3] run setblock ~12 ~-1 ~-14 minecraft:suspicious_sand{item:{id:"minecraft:paper",count:1}}

## OTHER RESET