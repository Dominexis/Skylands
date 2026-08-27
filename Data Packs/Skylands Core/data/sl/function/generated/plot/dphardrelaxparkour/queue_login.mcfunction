# Cancel if the plot is not available
execute store result score #is_available sl.value run function sl:generated/plot/dphardrelaxparkour/is_available
execute if score #debug_mode sl.value matches 1 if score #is_available sl.value matches 0 run tellraw @s {text:"The plot dphardrelaxparkour is not available",color:"red",type:"text"}
execute if score #is_available sl.value matches 0 run return 0

# Log out of current plot
function sl:plot/logout

# Set plot ID
scoreboard players set @s sl.plot 327686
scoreboard players set @s sl.fade_plot 327686

# Turn plot on if it is currently off
execute if score #plot.dphardrelaxparkour.state sl.value matches 0 run function sl:generated/plot/dphardrelaxparkour/queue_on
execute if score #plot.dphardrelaxparkour.state sl.value matches 2 run function sl:generated/plot/dphardrelaxparkour/queue_on

# Login immediately if plot is already on
execute if score #plot.dphardrelaxparkour.state sl.value matches 1 run function sl:generated/plot/dphardrelaxparkour/initiate_login

# Return 1 to mark success
return 1