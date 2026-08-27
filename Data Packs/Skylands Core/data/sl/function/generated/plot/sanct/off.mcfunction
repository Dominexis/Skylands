# Set state of plot
scoreboard players set #plot.sanct.state sl.value 0

# Turn off plot
function sanct:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=-2560,y=-64,z=2048,dx=511,dy=511,dz=511,tag=sl.collectible]

# Unforceload chunks
function sl:generated/plot/sanct/unforceload

# Send any players that happen to be in the plot to lobby
execute as @a[scores={sl.plot=163835}] at @s run function sl:player/lobby