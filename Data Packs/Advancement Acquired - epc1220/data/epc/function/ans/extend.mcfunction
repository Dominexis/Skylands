$execute at @e[tag=l$(lvl), tag=ans] if block ~ ~ ~ minecraft:quartz_pillar run setblock ~ ~1 ~ minecraft:polished_blackstone_button[face=floor,facing=west]
$execute at @e[tag=l$(lvl), tag=ans] if block ~ ~ ~ minecraft:quartz_pillar run setblock ~ ~-1 ~ minecraft:command_block{conditionMet:0b, auto:0b, powered:0b, Command: "function epc:check_level {lvl:$(lvl), numMobs:$(mobs)}"}
