# Set state of plot
scoreboard players set #plot.demo.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 3
execute positioned 1792 85 290 run function sl:collectible/spawn

# Turn on plot
function demo:plot_on

# Login all players
execute as @a[scores={sl.plot=3}] at @s run function sl:generated/plot/demo/initiate_login