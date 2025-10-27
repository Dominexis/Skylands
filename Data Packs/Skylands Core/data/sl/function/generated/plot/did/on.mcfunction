# Set state of plot
scoreboard players set #plot.did.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 1073512442
execute positioned -2916 2 -3737 run function sl:collectible/spawn

# Turn on plot
function did:plot_on

# Login all players
execute as @a[scores={sl.plot=1073512442}] at @s run function sl:generated/plot/did/initiate_login