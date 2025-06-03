# Cancel if the plot cannot be turned on
execute store result score #can_turn_on sl.value run function sl:generated/plot/itspungpond98/can_turn_on
execute if score #can_turn_on sl.value matches 0 run return 0

# Set state of plot
# Put state into a special state if it is queued to turn off already
execute if score #plot.itspungpond98.state sl.value matches 2 run scoreboard players set #plot.itspungpond98.state sl.value 4
execute unless score #plot.itspungpond98.state sl.value matches 4 run scoreboard players set #plot.itspungpond98.state sl.value 3

# Forceload chunks
function sl:generated/plot/itspungpond98/forceload

# Return 1 to mark success
return 1