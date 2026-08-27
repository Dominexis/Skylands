# Set state of plot
scoreboard players set #plot.futuristic.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 327673
execute positioned -3355 160 4860 run function sl:collectible/spawn

# Turn on plot
function futuristic:plot_on

# Login all players
execute as @a[scores={sl.plot=327673}] at @s run function sl:generated/plot/futuristic/initiate_login