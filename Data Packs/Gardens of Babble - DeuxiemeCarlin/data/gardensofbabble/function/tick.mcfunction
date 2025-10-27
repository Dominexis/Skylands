## This function runs every tick at the center of the plot at Y=0 when the plot is on

# Kill player if they fall
execute as @a[distance=..100,predicate=sl:player] at @s positioned 2659 35 3650 if entity @s[gamemode=adventure,dx=291,dy=10,dz=262] run tp @s[gamemode=adventure,dx=291,dy=10,dz=262] 2816 65 3840

# Give player resistance
execute as @a[distance=..100,predicate=sl:player] at @s positioned 2659 35 3650 if entity @s[gamemode=adventure,dx=291,dy=100,dz=262] run effect give @s[gamemode=adventure,dx=291,dy=100,dz=262] minecraft:resistance 1 5 true