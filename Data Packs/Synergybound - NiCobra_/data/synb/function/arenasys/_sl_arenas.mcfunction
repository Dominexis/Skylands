##

# [SKYLANDS: ABSCOORDS]

## ------------ Arena 1

summon minecraft:marker 3298 59 -2368 {Tags:["synb.mark.arena","synb.tmp.new_arena"]}
scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] synb.ASys.ArenaID 1
scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] synb.ASys.MaxWave 4
scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] synb.ASys.MaxCycle 3
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] run function synb:arenasys/spawn_pos/arena1
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] remove synb.tmp.new_arena

summon minecraft:marker 3295 60 -2365 {Tags:["synb.mark.wave_button"]}
summon minecraft:marker 3318 70 -2378 {Tags:["synb.mark.onboard_button"]}
summon minecraft:marker 3324 60 -2371 {Tags:["synb.mark.reroll_cauldron"]}
summon minecraft:marker 3330 57 -2360 {Tags:["synb.mark.sacdoor","synb.attr.z_axis"]}
summon minecraft:marker 3333 56 -2360 {Tags:["synb.mark.sac_relic"]}
summon minecraft:marker 3330 58 -2368 {Tags:["synb.mark.fountain"]}
summon minecraft:marker 3322 60 -2363 {Tags:["synb.mark.prison_button"]}
summon minecraft:marker 3320 58.5 -2359 {Tags:["synb.mark.respawn_point"]}
summon minecraft:marker 3321 61 -2374 {Tags:["synb.mark.merchant_button"]}
execute positioned 3321 60 -2375.0 run function synb:elements/merchant/spawn {rotation:0,profession:"farmer"}

## ------------ Arena 2

summon minecraft:marker 3282 87 -2274 {Tags:["synb.mark.arena","synb.tmp.new_arena"]}
scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] synb.ASys.ArenaID 2
scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] synb.ASys.MaxWave 4
scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] synb.ASys.MaxCycle 3
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] run function synb:arenasys/spawn_pos/arena2
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] remove synb.tmp.new_arena

summon minecraft:marker 3289 88 -2272 {Tags:["synb.mark.wave_button"]}
summon minecraft:marker 3282 86 -2297 {Tags:["synb.mark.onboard_button"]}
summon minecraft:marker 3312 85 -2267 {Tags:["synb.mark.reroll_cauldron"]}
summon minecraft:marker 3318 83 -2293 {Tags:["synb.mark.sacdoor","synb.attr.z_axis"]}
summon minecraft:marker 3321 82 -2293 {Tags:["synb.mark.sac_relic"]}
summon minecraft:marker 3319 84 -2281 {Tags:["synb.mark.fountain"]}
summon minecraft:marker 3313 86 -2280 {Tags:["synb.mark.prison_button"]}
summon minecraft:marker 3312 92 -2279.0 {Tags:["synb.mark.respawn_point"]}
summon minecraft:marker 3316 86 -2269 {Tags:["synb.mark.merchant_button"]}
execute positioned 3318.0 85 -2267.0 run function synb:elements/merchant/spawn {rotation:135,profession:"armorer"}

## ------------ Arena 3

summon minecraft:marker 3371 122 -2307 {Tags:["synb.mark.arena","synb.tmp.new_arena"]}
scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] synb.ASys.ArenaID 3
scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] synb.ASys.MaxWave 5
scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] synb.ASys.MaxCycle 3
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] run function synb:arenasys/spawn_pos/arena3
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_arena] remove synb.tmp.new_arena

summon minecraft:marker 3379 123 -2307 {Tags:["synb.mark.wave_button"]}
summon minecraft:marker 3371 114 -2307 {Tags:["synb.mark.onboard_button"]}
summon minecraft:marker 3344 121 -2285 {Tags:["synb.mark.reroll_cauldron"]}
summon minecraft:marker 3338 115 -2297 {Tags:["synb.mark.sacdoor","synb.attr.x_axis"]}
summon minecraft:marker 3338 114 -2293 {Tags:["synb.mark.sac_relic"]}
summon minecraft:marker 3349 118 -2301 {Tags:["synb.mark.fountain"]}
summon minecraft:marker 3349 122 -2290 {Tags:["synb.mark.prison_button"]}
summon minecraft:marker 3355 121 -2290 {Tags:["synb.mark.respawn_point"]}
summon minecraft:marker 3341 122 -2290 {Tags:["synb.mark.merchant_button"]}
execute positioned 3344 121 -2290 run function synb:elements/merchant/spawn {rotation:180,profession:"cleric"}