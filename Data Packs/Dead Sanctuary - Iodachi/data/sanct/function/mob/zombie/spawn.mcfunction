
function sanct:mob/zombie/summon with storage sanct:storage root.summon.zombie.stat
execute as @e[type=minecraft:zombie,limit=2,distance=0] at @s run function sanct:mob/zombie/spawn_data