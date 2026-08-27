
# Announcement
title @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] times 10 60 20
title @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] subtitle "§3§oReturn to the §b§oCloud in a Bottle"
title @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] title "§aLevel 30 Reached!"
schedule function sanct:plot/goal/title_delay 90

execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] run playsound minecraft:item.goat_horn.sound.7 hostile @s ~ ~ ~ 8 0 1

# Update tower
summon minecraft:text_display -2318 86 2311 {text:["Thanks for playing!\n",{text:" - Iodachi",color:gray}]}
tp @e[type=minecraft:area_effect_cloud,tag=sanct.cloud_barrier,x=-2317.5,y=83.9,z=2310.0,distance=..0.61] -2309.5 -140.0 2307.5
kill @e[x=-2309.5,y=-140.25,z=2307.5,distance=..0.25,type=#sanct:barrier,tag=sanct.cloud_barrier]

# Summon path hint targets
summon minecraft:pig -2307 78.99 2332 {active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:0b}],Tags:["sanct.goal_path","sanct.goal_path_destination_a"],NoAI:1b,attributes:[{id:"minecraft:scale",base:0}],Silent:1b,DeathLootTable:"",Team:"sanct.goal_path"}
summon minecraft:pig -2323 83 2311 {active_effects:[{id:"minecraft:resistance",amplifier:255,duration:-1,show_particles:0b}],Tags:["sanct.goal_path","sanct.goal_path_destination_b"],NoAI:1b,attributes:[{id:"minecraft:scale",base:0}],Silent:1b,DeathLootTable:"",Team:"sanct.goal_path"}

# Set path hint destinations
data modify storage sanct:storage root.goal_path_destination set value [{AngerTime:2147483647,Tags:["sanct.goal_path"]},{AngerTime:2147483647,Tags:["sanct.goal_path","sanct.destination_b"]}]
data modify storage sanct:storage root.goal_path_destination[0].AngryAt set from entity @e[type=minecraft:pig,tag=sanct.goal_path_destination_a,x=-2306.5,y=78.99,z=2332.5,distance=..0.1,limit=1] UUID
data modify storage sanct:storage root.goal_path_destination[1].AngryAt set from entity @e[type=minecraft:pig,tag=sanct.goal_path_destination_b,x=-2322.5,y=83,z=2311.5,distance=..0.1,limit=1] UUID

scoreboard players set #barrier_unlocked sanct.numbers 1