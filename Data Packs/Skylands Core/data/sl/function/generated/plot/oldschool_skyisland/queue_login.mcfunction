# Cancel if the plot is not available
execute store result score #is_available sl.value run function sl:generated/plot/oldschool_skyisland/is_available
execute if score #debug_mode sl.value matches 1 if score #is_available sl.value matches 0 run tellraw @s {"text":"The plot oldschool_skyisland is not available","color":"red"}
execute if score #is_available sl.value matches 0 run return 0

# Log out of current plot
function sl:plot/logout

# Set plot ID
scoreboard players set @s sl.plot 1073709061
scoreboard players set @s sl.fade_plot 1073709061

# Turn plot on if it is currently off
execute if score #plot.oldschool_skyisland.state sl.value matches 0 run function sl:generated/plot/oldschool_skyisland/queue_on
execute if score #plot.oldschool_skyisland.state sl.value matches 2 run function sl:generated/plot/oldschool_skyisland/queue_on

# Login immediately if plot is already on
execute if score #plot.oldschool_skyisland.state sl.value matches 1 run function sl:generated/plot/oldschool_skyisland/initiate_login

# Return 1 to mark success
return 1