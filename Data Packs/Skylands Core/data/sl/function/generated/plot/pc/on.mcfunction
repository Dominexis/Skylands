# Set state of plot
scoreboard players set #plot.pc.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 327684
execute positioned 2176 17 5453 run function sl:collectible/spawn

# Turn on plot
function pc:plot_on

# Login all players
execute as @a[scores={sl.plot=327684}] at @s run function sl:generated/plot/pc/initiate_login