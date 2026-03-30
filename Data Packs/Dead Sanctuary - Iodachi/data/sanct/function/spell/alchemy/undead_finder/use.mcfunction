
# Basic
advancement revoke @s only sanct:spell/undead_finder_use
playsound minecraft:block.amethyst_block.resonate player @a[distance=..16]
effect give @s minecraft:glowing 1 0 true
execute unless predicate sanct:spell/undead_finder_upgraded run return run effect give @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:zombie] minecraft:glowing 1 0 true

# Upgraded
effect give @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:spell/undead_finder] minecraft:glowing 1 0 true
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:item_display,tag=sanct.vampire_blood] run data modify entity @s Glowing set value 1b
schedule function sanct:spell/alchemy/undead_finder/glow_timeout 10