
execute if entity @s[advancements={sanct:spell/player_drops_interact={interact=true}}] positioned ~ ~1.62 ~ as @e[type=minecraft:interaction,tag=sanct.player_drops,distance=..10] if data entity @s interaction at @s run function sanct:spell/ritual/player_drops/break with entity @s data.player_drops
execute if entity @s[advancements={sanct:spell/player_drops_interact={attack=true}}] positioned ~ ~1.62 ~ as @e[type=minecraft:interaction,tag=sanct.player_drops,distance=..10] if data entity @s attack at @s run function sanct:spell/ritual/player_drops/break with entity @s data.player_drops

advancement revoke @s only sanct:spell/player_drops_interact