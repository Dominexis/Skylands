# Cancel if the plot cannot be turned on
execute store result score #can_turn_on sl.value run function sl:generated/plot/demo/can_turn_on
execute if score #can_turn_on sl.value matches 0 run return 0

# Set state of plot
scoreboard players set #plot.demo.state sl.value 3

# Forceload chunks
function sl:generated/plot/demo/forceload

# Return 1 to mark success
return 1