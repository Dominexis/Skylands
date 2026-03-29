# Set state of plot
scoreboard players set #plot.futuristic.state sl.value 0

# Turn off plot
function futuristic:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=-3584,y=-64,z=4608,dx=511,dy=511,dz=511,tag=sl.collectible]

# Unforceload chunks
function sl:generated/plot/futuristic/unforceload

# Send any players that happen to be in the plot to lobby
execute as @a[scores={sl.plot=327673}] at @s run function sl:player/lobby