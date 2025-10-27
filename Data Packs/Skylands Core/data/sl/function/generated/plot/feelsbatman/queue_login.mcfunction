# Cancel if the plot is not available
execute store result score #is_available sl.value run function sl:generated/plot/feelsbatman/is_available
execute if score #debug_mode sl.value matches 1 if score #is_available sl.value matches 0 run tellraw @s {text:"The plot feelsbatman is not available",color:"red",type:"text"}
execute if score #is_available sl.value matches 0 run return 0

# Log out of current plot
function sl:plot/logout

# Set plot ID
scoreboard players set @s sl.plot 1073512447
scoreboard players set @s sl.fade_plot 1073512447

# Turn plot on if it is currently off
execute if score #plot.feelsbatman.state sl.value matches 0 run function sl:generated/plot/feelsbatman/queue_on
execute if score #plot.feelsbatman.state sl.value matches 2 run function sl:generated/plot/feelsbatman/queue_on

# Login immediately if plot is already on
execute if score #plot.feelsbatman.state sl.value matches 1 run function sl:generated/plot/feelsbatman/initiate_login

# Return 1 to mark success
return 1