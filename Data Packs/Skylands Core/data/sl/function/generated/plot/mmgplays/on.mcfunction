# Set state of plot
scoreboard players set #plot.mmgplays.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 294912
execute positioned 196 274 4981 run function sl:collectible/spawn

# Turn on plot
function mmgplays:plot_on

# Login all players
execute as @a[scores={sl.plot=294912}] at @s run function sl:generated/plot/mmgplays/initiate_login