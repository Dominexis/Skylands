# Set state of plot
scoreboard players set #plot.oldschool_skyisland.state sl.value 0

# Turn off plot
function oldschool_skyisland:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=2560,y=-64,z=-512,dx=511,dy=511,dz=511,tag=sl.collectible]

# Unforceload chunks
function sl:generated/plot/oldschool_skyisland/unforceload

# Send any players that happen to be in the plot to lobby
execute as @a[scores={sl.plot=1073709061}] at @s run function sl:player/lobby