execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.1 ~ run data modify entity @e[type=minecraft:arrow,distance=..0.1,limit=1] pickup set value 0b
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.1 ~ run tag @e[type=minecraft:arrow,distance=..0.1,limit=1] add sanct.kills_horses
advancement revoke @s only sanct:spell/horse_crossbow/shoot
function sanct:inventory/page/missing