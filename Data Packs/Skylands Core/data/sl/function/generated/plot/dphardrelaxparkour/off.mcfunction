# Decrement weighty plot count
execute if score #plot.dphardrelaxparkour.state sl.value matches 1.. run scoreboard players remove #medium_plot_count sl.value 1

# Set state of plot
scoreboard players set #plot.dphardrelaxparkour.state sl.value 0

# Turn off plot
function dphardrelaxparkour:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=3072,y=-64,z=5120,dx=511,dy=511,dz=511,tag=sl.collectible]

# Unforceload chunks
function sl:generated/plot/dphardrelaxparkour/unforceload

# Send any players that happen to be in the plot to lobby
execute as @a[scores={sl.plot=327686}] at @s run function sl:player/lobby