# Set state of plot
scoreboard players set #plot.demo.state sl.value 0

# Decrement weighty plot count
scoreboard players remove #medium_plot_count sl.value 1

# Turn off plot
function demo:plot_off

# Unforceload chunks
function sl:generated/plot/demo/unforceload

# Send any players that happen to be in the plot to spectator
execute as @a[scores={sl.plot=3}] at @s run function sl:player/spectate