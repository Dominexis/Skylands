# Set state of plot
scoreboard players set #plot.oldschool_skyisland.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 1073709061
execute positioned 2835 116 -267 run function sl:collectible/spawn

# Turn on plot
function oldschool_skyisland:plot_on

# Login all players
execute as @a[scores={sl.plot=1073709061}] at @s run function sl:generated/plot/oldschool_skyisland/initiate_login