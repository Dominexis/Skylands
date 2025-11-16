# Set state of plot
scoreboard players set #plot.maced.state sl.value 0

# Turn off plot
function maced:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=5632,y=-64,z=-3584,dx=511,dy=511,dz=511,tag=sl.collectible]

# Unforceload chunks
function sl:generated/plot/maced/unforceload

# Send any players that happen to be in the plot to lobby
execute as @a[scores={sl.plot=1073512459}] at @s run function sl:player/lobby