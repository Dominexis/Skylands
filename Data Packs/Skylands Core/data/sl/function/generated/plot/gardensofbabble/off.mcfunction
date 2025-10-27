# Set state of plot
scoreboard players set #plot.gardensofbabble.state sl.value 0

# Turn off plot
function gardensofbabble:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=2560,y=-64,z=3584,dx=511,dy=511,dz=511,tag=sl.collectible]

# Unforceload chunks
function sl:generated/plot/gardensofbabble/unforceload

# Send any players that happen to be in the plot to lobby
execute as @a[scores={sl.plot=229381}] at @s run function sl:player/lobby