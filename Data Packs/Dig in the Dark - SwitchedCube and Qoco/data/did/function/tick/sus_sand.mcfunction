execute if entity @s[tag=did.marker.sus_sand.init] unless block ~ ~ ~ minecraft:suspicious_sand run setblock ~ ~ ~ minecraft:suspicious_sand{LootTable:"did:sand"}
execute if entity @s[tag=did.marker.sus_sand.init] if block ~ ~ ~ minecraft:suspicious_sand run tag @s remove did.marker.sus_sand.init
execute unless block ~ ~ ~ minecraft:suspicious_sand run function did:misc/convert_sandstone