# Set state of plot
scoreboard players set #plot.skywardsteam.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 7
execute positioned 3859 65 202 run function sl:collectible/spawn

# Turn on plot
function skywardsteam:plot_on

# Login all players
execute as @a[scores={sl.plot=7}] at @s run function sl:generated/plot/skywardsteam/initiate_login