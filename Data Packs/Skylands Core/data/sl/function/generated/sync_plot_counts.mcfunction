# Synchronize plot count variables with actual values
scoreboard players set #medium_plot_count sl.value 0
execute if score #plot.demo.state sl.value matches 1.. run scoreboard players add #medium_plot_count sl.value 1
execute if score #plot.pc.state sl.value matches 1.. run scoreboard players add #medium_plot_count sl.value 1

scoreboard players set #heavy_plot_count sl.value 0