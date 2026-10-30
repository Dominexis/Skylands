# Set state of plot
scoreboard players set #plot.erictho.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 229388
execute positioned 6399 66 3840 run function sl:collectible/spawn

# Turn on plot
function erictho:plot_on

# Login all players
execute as @a[scores={sl.plot=229388}] at @s run function sl:generated/plot/erictho/initiate_login