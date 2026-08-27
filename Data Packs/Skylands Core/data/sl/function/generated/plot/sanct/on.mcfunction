# Set state of plot
scoreboard players set #plot.sanct.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 163835
execute positioned -2318 84 2309 run function sl:collectible/spawn

# Turn on plot
function sanct:plot_on

# Login all players
execute as @a[scores={sl.plot=163835}] at @s run function sl:generated/plot/sanct/initiate_login