# Set state of plot
scoreboard players set #plot.demo.state sl.value 0

# Decrement weighty plot count
scoreboard players remove #medium_plot_count sl.value 1

# Turn off plot
function demo:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=1536,y=-64,z=0,dx=511,dy=511,dz=511,tag=sl.collectible]

# Unforceload chunks
function sl:generated/plot/demo/unforceload

# Send any players that happen to be in the plot to lobby
execute as @a[scores={sl.plot=3}] at @s run function sl:player/lobby