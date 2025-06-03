# Set state of plot
scoreboard players set #plot.itspungpond98.state sl.value 0

# Turn off plot
function itspungpond98:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=512,y=-64,z=-5632,dx=511,dy=511,dz=511,tag=sl.collectible]

# Unforceload chunks
function sl:generated/plot/itspungpond98/unforceload

# Send any players that happen to be in the plot to lobby
execute as @a[scores={sl.plot=1073381377}] at @s run function sl:player/lobby