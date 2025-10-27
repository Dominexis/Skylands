# Cancel if the plot is not available
execute store result score #is_available sl.value run function sl:generated/plot/gardensofbabble/is_available
execute if score #is_available sl.value matches 0 run return 0

# Schedule login via fade out
scoreboard players set @s sl.fade_plot 229381
function sl:player/fade/out

# Return 1 to mark success
return 1