execute if entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:pillager,limit=1] run schedule function sanct:mob/vampire/vulnerable/clock 1

# Particles
execute at @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:pillager] run particle minecraft:large_smoke ~ ~0.5 ~ 0.3 0.4 0.3 0.05 4

# Crossbow sounds
stopsound @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] hostile minecraft:item.crossbow.loading_end
stopsound @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] hostile minecraft:item.crossbow.shoot
stopsound @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] player minecraft:item.crossbow.quick_charge_3

# Arrow launch sound
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:arrow,tag=!sanct.init] if data entity @s item.components."minecraft:potion_contents" run tag @s add sanct.is_vampire_arrow
execute at @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:arrow,tag=sanct.is_vampire_arrow,tag=!sanct.init] run playsound minecraft:entity.parrot.imitate.evoker hostile @a[distance=..16] ~ ~ ~ 1 2
tag @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:arrow,tag=!sanct.init] add sanct.init

# Kill spectral arrows in the ground
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:arrow,tag=sanct.is_vampire_arrow,nbt={inGround:1b}] run tag @s add sanct.remove_arrow
execute at @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:arrow,tag=sanct.remove_arrow] run stopsound @a[distance=..16] neutral item.crossbow.hit
kill @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:arrow,tag=sanct.remove_arrow]