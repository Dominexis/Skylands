# Initialize plot state values
scoreboard players add #plot.demo.state sl.value 0

# Initialize IDs compound
data modify storage sl:data plot_ids set value {lobby:0,demo:3}

# Initialize names compound
data modify storage sl:data plot_names set value {0:"lobby",3:"demo"}