tp @e[type=#sanct:safe_spawnpoint_kill,distance=..16] -2310 -130 2307
kill @e[x=-2311,y=-131,z=2306,dx=2,dy=3,dz=2]
tp @s ~ ~ ~ ~ ~

# Get slot_loot items
execute if entity @s[advancements={sanct:tags={slot_loot_dead=true}}] at @s rotated ~ 0 positioned ^ ^1.2 ^1 run function sanct:spell/buff/slot_loot/loot