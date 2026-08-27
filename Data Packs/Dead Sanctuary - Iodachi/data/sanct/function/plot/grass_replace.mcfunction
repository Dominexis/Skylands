
playsound minecraft:block.grass.place block @a[distance=..16] ~ ~ ~ 1 0.8
particle minecraft:block{block_state:"minecraft:pale_hanging_moss"} ~ ~0.5 ~ 0.25 0.25 0.25 0 35

execute if entity @s[tag=sanct.grass.short_moss] run return run setblock ~ ~ ~ minecraft:pale_hanging_moss[tip=false] strict
execute if entity @s[tag=sanct.grass.short_grass] run return run setblock ~ ~ ~ minecraft:short_grass strict
execute if entity @s[tag=sanct.grass.short_fern] run return run setblock ~ ~ ~ minecraft:fern strict


particle minecraft:block{block_state:"minecraft:pale_hanging_moss"} ~ ~1.5 ~ 0.25 0.25 0.25 0 35

execute if entity @s[tag=sanct.grass.tall_moss] run return run fill ~ ~ ~ ~ ~1 ~ minecraft:pale_hanging_moss[tip=false] strict
execute if entity @s[tag=sanct.grass.tall_grass] run setblock ~ ~ ~ minecraft:tall_grass[half=lower] strict
execute if entity @s[tag=sanct.grass.tall_grass] run return run setblock ~ ~1 ~ minecraft:tall_grass[half=upper] strict
execute if entity @s[tag=sanct.grass.tall_fern] run setblock ~ ~ ~ minecraft:large_fern[half=lower] strict
execute if entity @s[tag=sanct.grass.tall_fern] run setblock ~ ~1 ~ minecraft:large_fern[half=upper] strict