## TURN OFF LEVELS
function epc:level_off {lvl:8, inum:5, fill:"crimson_nylium"}
function epc:level_off {lvl:9, inum:5, fill:"sand"}

## RESET TRAVEL PADS
execute at @e[tag=I5,tag=LEAVE] run setblock ~ ~ ~ minecraft:grass_block
execute at @e[tag=I5] run setblock ~ ~1 ~ air
kill @e[tag=portal_1b]
kill @e[tag=portal_2]
execute at @e[tag=ISLE5] positioned ~-11 ~-14 ~-15 run fill ~ ~ ~ ~ ~3 ~2 minecraft:netherrack

## RESET SUSPICIOUS BLOCKS