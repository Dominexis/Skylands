# Set state of plot
scoreboard players set #plot.maced.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 1073512459
execute positioned 5888 67 -3361 run function sl:collectible/spawn

# Turn on plot
function maced:plot_on

# Login all players
execute as @a[scores={sl.plot=1073512459}] at @s run function sl:generated/plot/maced/initiate_login