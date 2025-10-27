# Cancel if the plot is not available
execute store result score #is_available sl.value run function sl:generated/plot/itspungpond98/is_available
execute if score #debug_mode sl.value matches 1 if score #is_available sl.value matches 0 run tellraw @s {text:"The plot itspungpond98 is not available",color:"red",type:"text"}
execute if score #is_available sl.value matches 0 run return 0

# Log out of current plot
function sl:plot/logout

# Set plot ID
scoreboard players set @s sl.plot 1073381377
scoreboard players set @s sl.fade_plot 1073381377

# Turn plot on if it is currently off
execute if score #plot.itspungpond98.state sl.value matches 0 run function sl:generated/plot/itspungpond98/queue_on
execute if score #plot.itspungpond98.state sl.value matches 2 run function sl:generated/plot/itspungpond98/queue_on

# Login immediately if plot is already on
execute if score #plot.itspungpond98.state sl.value matches 1 run function sl:generated/plot/itspungpond98/initiate_login

# Return 1 to mark success
return 1