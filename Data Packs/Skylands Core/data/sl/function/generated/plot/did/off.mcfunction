# Set state of plot
scoreboard players set #plot.did.state sl.value 0

# Turn off plot
function did:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=-3072,y=-64,z=-4096,dx=511,dy=511,dz=511,tag=sl.collectible]

# Unforceload chunks
function sl:generated/plot/did/unforceload

# Send any players that happen to be in the plot to lobby
execute as @a[scores={sl.plot=1073512442}] at @s run function sl:player/lobby