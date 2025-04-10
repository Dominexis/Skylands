# Set state of plot
scoreboard players set #plot.feelsbatman.state sl.value 0

# Turn off plot
function feelsbatman:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=-512,y=-64,z=-4096,dx=511,dy=511,dz=511,tag=sl.collectible]

# Unforceload chunks
function sl:generated/plot/feelsbatman/unforceload

# Send any players that happen to be in the plot to lobby
execute as @a[scores={sl.plot=1073512447}] at @s run function sl:player/lobby