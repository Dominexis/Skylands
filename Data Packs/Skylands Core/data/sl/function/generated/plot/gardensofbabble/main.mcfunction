# Tick plot if it is on
execute if score #plot.gardensofbabble.state sl.value matches 1 run function sl:generated/plot/gardensofbabble/tick

# Run queue function if the plot is queued to turn on or off
execute if score #plot.gardensofbabble.state sl.value matches 2..4 run function sl:generated/plot/gardensofbabble/queue