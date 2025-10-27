# Set state of plot
scoreboard players set #plot.feelsbatman.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 1073512447
execute positioned -256 40 -3770 run function sl:collectible/spawn

# Turn on plot
function feelsbatman:plot_on

# Login all players
execute as @a[scores={sl.plot=1073512447}] at @s run function sl:generated/plot/feelsbatman/initiate_login