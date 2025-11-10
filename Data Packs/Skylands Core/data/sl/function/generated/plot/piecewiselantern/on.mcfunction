# Set state of plot
scoreboard players set #plot.piecewiselantern.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 1073676285
execute positioned -1281 16 -1474 run function sl:collectible/spawn

# Turn on plot
function piecewiselantern:plot_on

# Login all players
execute as @a[scores={sl.plot=1073676285}] at @s run function sl:generated/plot/piecewiselantern/initiate_login