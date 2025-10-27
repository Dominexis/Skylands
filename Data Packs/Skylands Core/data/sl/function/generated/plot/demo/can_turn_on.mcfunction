# Return 1 if the plot can be turned on by all metrics
execute if score #plot.demo.state sl.value matches 1 run return 1
execute if score #plot.demo.state sl.value matches 3 run return 1
execute if score #plot.demo.state sl.value matches 4 run return 1
execute store result score #forceloaded_chunks_count sl.value run forceload query
return run execute if score #forceloaded_chunks_count sl.value matches ..254 if score #medium_plot_count sl.value < #max_medium_plots sl.value