
function sanct:plot/off/remove_scoreboards
function sanct:plot/off/remove_teams
function sanct:plot/off/end_schedules

# Replace destroyed grass
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:interaction,tag=sanct.require_grass_replace] at @s run function sanct:plot/grass_replace

# Kill entities that require extra steps
data merge entity @e[type=minecraft:wither,x=-2310,y=27,z=2307,dx=0,limit=1] {Health:0,DeathTime:19}
tp @e[type=minecraft:slime,x=-2318,y=84,z=2309,dx=0,limit=1] -2310 26 2307
data merge entity @e[type=minecraft:slime,x=-2310,y=26,z=2307,dx=0,limit=1] {Health:0,DeathTime:19,Invulnerable:0b}

# Kill normal entities
kill @e[x=-2559,y=-64,z=2049,dx=510,dy=584,dz=510,type=!minecraft:player]
kill @e[x=-2384,y=-16,z=2224,dx=158,dy=158,dz=158,type=minecraft:experience_orb]

# Reset tower
setblock -2318 83 2319 minecraft:iron_door[facing=south,open=false]

# Reset altar
clone -2318 59 2318 -2319 59 2319 -2319 61 2318

data remove storage sanct:storage root