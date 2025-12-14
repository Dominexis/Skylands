## TURN OFF LEVELS
function epc:level_off {lvl:6, inum:4, fill:"grass_block"}
function epc:level_off {lvl:7, inum:4, fill:"stone"}

## RESET TRAVEL PADS
execute at @e[tag=I4,tag=LEAVE] run setblock ~ ~ ~ minecraft:grass_block
execute at @e[tag=I4] run setblock ~ ~1 ~ air
kill @e[tag=portal_1a]
execute at @e[tag=ISLE4] positioned ~-7 ~-33 ~-4 run fill ~ ~ ~ ~ ~3 ~2 minecraft:stone

## RESET SUSPICIOUS BLOCKS