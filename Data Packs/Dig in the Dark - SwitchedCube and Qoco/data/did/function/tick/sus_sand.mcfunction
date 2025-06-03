execute if entity @s[tag=did.marker.sus_sand.init] unless block ~ ~ ~ suspicious_sand run setblock ~ ~ ~ suspicious_sand{LootTable:"did:sand"}
execute if entity @s[tag=did.marker.sus_sand.init] if block ~ ~ ~ suspicious_sand run tag @s remove did.marker.sus_sand.init
execute unless block ~ ~ ~ suspicious_sand run function did:misc/convert_sandstone