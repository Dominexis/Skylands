# Set state of plot
scoreboard players set #plot.dphardrelaxparkour.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 327686
execute positioned 3124 17 5327 run function sl:collectible/spawn

# Turn on plot
function dphardrelaxparkour:plot_on

# Login all players
execute as @a[scores={sl.plot=327686}] at @s run function sl:generated/plot/dphardrelaxparkour/initiate_login