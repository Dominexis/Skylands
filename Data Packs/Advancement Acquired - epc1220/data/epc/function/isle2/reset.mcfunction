## TURN OFF LEVELS
function epc:level_off {lvl:4, inum:2, fill:"snow_block"}

## RESET TRAVEL PADS
execute at @e[tag=I2,tag=LEAVE] run setblock ~ ~ ~ minecraft:snow_block
execute at @e[tag=I2] run setblock ~ ~1 ~ air

## RESET SUSPICIOUS BLOCKS
execute at @n[tag=ISLE2] run setblock ~-8 ~1 ~-3 minecraft:suspicious_gravel{item:{id:"minecraft:paper",count:1}}
execute at @n[tag=ISLE2] run setblock ~1 ~2 ~-14 minecraft:suspicious_gravel{item:{id:"minecraft:paper",count:1}}

## OTHER RESET
execute at @n[tag=ISLE2] run setblock ~7 ~0 ~8 spruce_door[facing=south, hinge=left, open=false]