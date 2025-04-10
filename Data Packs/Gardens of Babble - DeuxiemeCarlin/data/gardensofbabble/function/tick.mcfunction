## This function runs every tick at the center of the plot at Y=0 when the plot is on

# Kill player if they fall
execute as @a[distance=..100,predicate=sl:player] at @s positioned 2659 35 3650 if entity @s[dx=291,dy=10,dz=262,gamemode=adventure] run tp @s[dx=291,dy=10,dz=262,gamemode=adventure] 2816 65 3840

# Give player resistance
execute as @a[distance=..100,predicate=sl:player] at @s positioned 2659 35 3650 if entity @s[dx=291,dy=100,dz=262,gamemode=adventure] run effect give @s[dx=291,dy=100,dz=262,gamemode=adventure] minecraft:resistance 1 5 true