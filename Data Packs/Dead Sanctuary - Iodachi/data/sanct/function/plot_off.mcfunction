
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

# Clear scheduled functions
schedule clear sanct:plot/tick_slow
schedule clear sanct:plot/error_correct
schedule clear sanct:player/death/clock
schedule clear sanct:mob/skeleton/lightning_delay
schedule clear sanct:mob/vampire/clock
schedule clear sanct:plot/kill_xp
schedule clear sanct:book/open/clock
schedule clear sanct:book/open/timeout_schedule
schedule clear sanct:mob/vampire/blood/block_change_back
schedule clear sanct:mob/vampire/form/teleport_bats
schedule clear sanct:mob/vampire/vulnerable/clock
schedule clear sanct:mob/zombie/leap/clock
schedule clear sanct:plot/altar/reset_delay
schedule clear sanct:plot/danger/clock
schedule clear sanct:plot/goal/clock
schedule clear sanct:plot/goal/title_delay
schedule clear sanct:spell/alchemy/teleport_item/clock
schedule clear sanct:spell/alchemy/undead_finder/glow_timeout
schedule clear sanct:spell/alchemy/weapon_harvest/clock
schedule clear sanct:spell/alchemy/weapon_sweeping/blood/whisper/delay
schedule clear sanct:spell/buff/revenge/effect/clock
schedule clear sanct:spell/ritual/spring_health/clock