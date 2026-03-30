
scoreboard players set @s sanct.respawn_timer 0
function sanct:player/death/respawn/regain_attributes

# Spawn in tutorial zone if not opened yet
execute unless score #tutorial_exited sanct.numbers matches 1 run return run tp @s -2318 83 2317 180 0

# Find spawn points without undead nearby
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawner] at @s unless entity @e[type=#sanct:undead,distance=..16] run tag @s add sanct.spawnpoint

# Clear somewhere if there are no available spawnpoints
execute unless entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawner,tag=sanct.spawnpoint,limit=1] at @n[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawner,tag=!sanct.block_backup_respawn,sort=random] run return run function sanct:player/death/respawn/safe_spawnpoint

# Tp to random available spawnpoint
execute at @n[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawnpoint,sort=random] run tp @s ~ ~ ~ ~ ~

tag @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawnpoint] remove sanct.spawnpoint

# Get slot_loot items
execute if entity @s[advancements={sanct:tags={slot_loot_dead=true}}] at @s rotated ~ 0 positioned ^ ^1.2 ^1 run function sanct:spell/buff/slot_loot/loot