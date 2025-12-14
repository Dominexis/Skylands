# mark out solution placement blocks
$execute at @e[tag=l$(lvl),tag=sol] run setblock ~ ~ ~ minecraft:air
$execute at @e[tag=l$(lvl),tag=sol] run setblock ~ ~-1 ~ minecraft:black_wool
# reset indicators & noteblocks
$execute at @e[tag=l$(lvl),tag=indicator] run fill ~ ~ ~ ~ ~ ~5 minecraft:$(fill)
$execute at @e[tag=l$(lvl),tag=nb_array] run setblock ~ ~ ~ minecraft:red_concrete
# reset checklevel
$execute at @e[tag=l$(lvl),tag=ans] run fill ~ ~ ~ ~ ~1 ~ air
$execute at @e[tag=l$(lvl),tag=ans] run setblock ~ ~-1 ~ minecraft:$(fill)
execute as @e[type=slime] run data merge entity @s {Size:0}
# remove all level entities
$kill @e[tag=l$(lvl)]
# remove items dropped from killing entities 
$execute at @e[type=marker,tag=ISLE$(inum)] run kill @e[type=item, distance=..32]
clear @a #wool