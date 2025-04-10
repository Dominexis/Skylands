# Set state of plot
scoreboard players set #plot.gardensofbabble.state sl.value 1

# Spawn collectibles
scoreboard players set #plot sl.value 229381
execute positioned 2816 62 3757 run function sl:collectible/spawn
execute positioned 2879 69 3781 run function sl:collectible/spawn
execute positioned 2828 70 3714 run function sl:collectible/spawn
execute positioned 2697 70 3786 run function sl:collectible/spawn

# Turn on plot
function gardensofbabble:plot_on

# Login all players
execute as @a[scores={sl.plot=229381}] at @s run function sl:generated/plot/gardensofbabble/initiate_login