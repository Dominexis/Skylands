# Tick plot
function oldschool_skyisland:tick

# Turn plot off if there are no players in it
execute store result score #player_count sl.value if entity @a[scores={sl.plot=1073709061}]
execute if score #player_count sl.value matches 0 run function sl:generated/plot/oldschool_skyisland/queue_off