# Set state of plot
scoreboard players set #plot.synb.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 1073577990
execute positioned 3311 100 -2221 run function sl:collectible/spawn
execute positioned 3331 154 -2288 run function sl:collectible/spawn

# Turn on plot
function synb:plot_on

# Login all players
execute as @a[scores={sl.plot=1073577990}] at @s run function sl:generated/plot/synb/initiate_login