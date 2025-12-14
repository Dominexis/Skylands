## TURN OFF LEVELS
function epc:level_off {lvl:1, inum:1, fill:"grass_block"}
function epc:level_off {lvl:2, inum:1, fill:"grass_block"}
function epc:level_off {lvl:3, inum:1, fill:"grass_block"}

## RESET TRAVEL PADS
execute at @e[tag=I1,tag=LEAVE] run setblock ~ ~ ~ minecraft:grass_block
execute at @e[tag=I1] run setblock ~ ~1 ~ air

execute at @e[tag=B1] run setblock ~ ~ ~ air
execute at @e[tag=B2] run setblock ~ ~ ~ air

## RESET SUSPICIOUS BLOCKS
execute at @n[tag=ISLE1] run setblock ~15 ~-1 ~-10 minecraft:suspicious_gravel{item:{id:"minecraft:paper",count:1}}
execute at @n[tag=ISLE1] run setblock ~7 ~6 ~14 minecraft:suspicious_gravel{item:{id:"minecraft:paper",count:1}}
execute at @n[tag=ISLE1] run setblock ~-35 ~-3 ~-2 minecraft:suspicious_gravel{item:{id:"minecraft:paper",count:1}}
execute at @n[tag=ISLE1] run setblock ~-14 ~-6 ~1 minecraft:suspicious_gravel{item:{id:"minecraft:paper",count:1}}
execute at @n[tag=ISLE1] run setblock ~3 ~-4 ~-29 minecraft:suspicious_gravel{item:{id:"minecraft:paper",count:1}}

## OTHER RESET
execute at @n[tag=ISLE1] run setblock ~-27 ~1 ~-4 oak_door[facing=north, hinge=right, open=false]
execute at @n[tag=ISLE1] run setblock ~-26 ~1 ~-15 oak_door[facing=west, hinge=right, open=false]
execute at @n[tag=ISLE1] run setblock ~-17 ~1 ~-19 oak_door[facing=east, hinge=left, open=false]
execute at @n[tag=ISLE1] run setblock ~-17 ~1 ~-18 oak_door[facing=east, hinge=right, open=false]
execute at @n[tag=ISLE1] run setblock ~-17 ~0 ~-9 oak_door[facing=east, hinge=right, open=false]
execute at @n[tag=ISLE1] run setblock ~-16 ~1 ~11 oak_door[facing=east, hinge=right, open=false]
execute at @n[tag=ISLE1] run setblock ~-6 ~1 ~19 oak_door[facing=north, hinge=left, open=false]
execute at @n[tag=ISLE1] run setblock ~-5 ~1 ~19 oak_door[facing=north, hinge=right, open=false]
