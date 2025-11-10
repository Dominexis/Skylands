# Set state of plot
scoreboard players set #plot.piecewiselantern.state sl.value 0

# Turn off plot
function piecewiselantern:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=-1536,y=-64,z=-1536,dx=511,dy=511,dz=511,tag=sl.collectible]

# Unforceload chunks
function sl:generated/plot/piecewiselantern/unforceload

# Send any players that happen to be in the plot to lobby
execute as @a[scores={sl.plot=1073676285}] at @s run function sl:player/lobby