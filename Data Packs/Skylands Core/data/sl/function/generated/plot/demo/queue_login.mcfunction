# Cancel if the plot is not available
execute store result score #is_available sl.value run function sl:generated/plot/demo/is_available
execute if score #is_available sl.value matches 0 run return 0

# Set plot ID
scoreboard players set @s sl.plot 3

# Turn plot on if it is currently off
execute if score #plot.demo.state sl.value matches 0 run function sl:generated/plot/demo/queue_on
execute if score #plot.demo.state sl.value matches 2 run function sl:generated/plot/demo/queue_on

# Login immediately if plot is already on
execute if score #plot.demo.state sl.value matches 1 run function sl:generated/plot/demo/login

# Return 1 to mark success
return 1