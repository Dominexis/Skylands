# Tick plot if it is on
execute if score #plot.feelsbatman.state sl.value matches 1 run function sl:generated/plot/feelsbatman/tick

# Run queue function if the plot is queued to turn on or off
execute if score #plot.feelsbatman.state sl.value matches 2..4 run function sl:generated/plot/feelsbatman/queue