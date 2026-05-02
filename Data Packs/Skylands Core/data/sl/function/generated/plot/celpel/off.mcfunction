# Set state of plot
scoreboard players set #plot.celpel.state sl.value 0

# Turn off plot
function celpel:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=-2048,y=-64,z=-6656,dx=511,dy=511,dz=511,tag=sl.collectible]

# Unforceload chunks
function sl:generated/plot/celpel/unforceload

# Send any players that happen to be in the plot to lobby
execute as @a[scores={sl.plot=1073348604}] at @s run function sl:player/lobby