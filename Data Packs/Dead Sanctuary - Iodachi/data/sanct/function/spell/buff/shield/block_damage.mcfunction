execute rotated ~ 0 run particle minecraft:sonic_boom ^ ^1.5 ^0.4
damage @n[type=#sanct:undead,tag=sanct.damage_target,distance=..2] 0.0000001 minecraft:arrow by @s
effect give @s minecraft:speed 5
advancement revoke @s only sanct:spell/shield_block