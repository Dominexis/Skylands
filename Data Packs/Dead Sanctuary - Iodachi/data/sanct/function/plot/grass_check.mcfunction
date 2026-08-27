tag @s remove sanct.require_grass_check
execute unless block ~ ~1 ~ #sanct:tall_grass unless block ~ ~ ~ #sanct:short_grass run return 1

tag @s add sanct.require_grass_replace
playsound minecraft:block.grass.break block @a[distance=..16] ~ ~ ~ 1 0.8
particle minecraft:block{block_state:"minecraft:pale_hanging_moss"} ~ ~0.5 ~ 0.25 0.25 0.25 0 35

execute if block ~ ~ ~ minecraft:pale_hanging_moss unless block ~ ~1 ~ minecraft:pale_hanging_moss run tag @s add sanct.grass.short_moss
execute if block ~ ~ ~ minecraft:short_grass run tag @s add sanct.grass.short_grass
execute if block ~ ~ ~ minecraft:fern run tag @s add sanct.grass.short_fern

setblock ~ ~ ~ minecraft:air strict
execute unless block ~ ~1 ~ #sanct:tall_grass run return 1

execute if block ~ ~1 ~ minecraft:pale_hanging_moss run tag @s add sanct.grass.tall_moss
execute if block ~ ~1 ~ minecraft:tall_grass run tag @s add sanct.grass.tall_grass
execute if block ~ ~1 ~ minecraft:large_fern run tag @s add sanct.grass.tall_fern

setblock ~ ~1 ~ minecraft:air strict
particle minecraft:block{block_state:"minecraft:pale_hanging_moss"} ~ ~1.5 ~ 0.25 0.25 0.25 0 35