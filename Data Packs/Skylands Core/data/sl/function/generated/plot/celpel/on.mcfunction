# Set state of plot
scoreboard players set #plot.celpel.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 1073348604
execute positioned -1792 231 -6397 run function sl:collectible/spawn

# Turn on plot
function celpel:plot_on

# Login all players
execute as @a[scores={sl.plot=1073348604}] at @s run function sl:generated/plot/celpel/initiate_login