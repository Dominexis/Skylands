schedule function sanct:plot/error_correct 300

# Players trapped in respawn cell
execute if entity @a[x=-2309.5,y=7,z=2307.5,distance=..1,predicate=sl:player,limit=1] run schedule function sanct:player/death/clock 3

# Players with deleted runes
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,scores={sanct.spell.rune=1..}] run function sanct:spell/alchemy/rune/update_effects

# Skeletons without horses
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:skeleton,predicate=!sanct:mob/skeleton/has_mount,tag=!sanct.damage_target] at @s run function sanct:mob/skeleton/mount/die

# Strays without horses
kill @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:stray,predicate=!sanct:mob/skeleton/has_mount]

# Bats outside of bounds
execute as @e[x=-2559,y=-64,z=2049,dx=510,dy=584,dz=510,type=minecraft:bat] unless entity @s[x=-2384,y=-16,z=2224,dx=158,dy=158,dz=158] run kill @s

# Vampire blood without silverfish
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:item_display,tag=sanct.vampire_blood] at @s run function sanct:mob/vampire/blood/die

# Vampire form without bats
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:vindicator] at @s run function sanct:mob/vampire/form/check_become_vulnerable

# Vampire vulnerable without arrows
item replace entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:pillager] weapon.offhand with minecraft:tipped_arrow[minecraft:potion_contents={custom_effects:[{id:"minecraft:blindness"}]},minecraft:item_model="minecraft:nether_wart",minecraft:max_stack_size=99] 99

# Goal path wolf without destination
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:wolf,tag=sanct.destination_b] unless entity @s[x=-2329,y=79,z=2302,dx=22,dy=22,dz=30] run data modify entity @s {} merge from storage sanct:storage root.goal_path_destination[0]
execute as @e[x=-2329,y=79,z=2302,dx=22,dy=22,dz=30,type=minecraft:wolf,tag=sanct.goal_path,predicate=sanct:mob/wolf/lost_target] run data modify entity @s {} merge from storage sanct:storage root.goal_path_destination[0]
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:wolf,tag=sanct.goal_path,predicate=sanct:mob/wolf/lost_target] run data modify entity @s {} merge from storage sanct:storage root.goal_path_destination[1]