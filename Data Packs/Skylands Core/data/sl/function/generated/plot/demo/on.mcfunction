# Set state of plot
scoreboard players set #plot.demo.state sl.value 1

# Increment weighty plot count
scoreboard players add #medium_plot_count sl.value 1

# Turn on plot
function demo:plot_on

# Login all players
execute as @a[scores={sl.plot=3}] run function sl:generated/plot/demo/login