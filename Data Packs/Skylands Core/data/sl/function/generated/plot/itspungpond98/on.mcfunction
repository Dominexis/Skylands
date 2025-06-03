# Set state of plot
scoreboard players set #plot.itspungpond98.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 1073381377
execute positioned 764 88 -5373 run function sl:collectible/spawn

# Turn on plot
function itspungpond98:plot_on

# Login all players
execute as @a[scores={sl.plot=1073381377}] at @s run function sl:generated/plot/itspungpond98/initiate_login